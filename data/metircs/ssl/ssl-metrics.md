# SSL 证书基础监控指标清单

> 来源：`tccli monitor DescribeBaseMetrics --Namespace QCE/SSL`（provider 无对应 data source）。原始输出存档：`metrics.json`（指标）、`events.json`（事件，空）。

| Metric Name | view key (namespace) | 中文名 | 单位 | 维度 | 支持周期(秒) | 统计方式 |
|---|---|---|---|---|---|---|
| `Expireday` | `expire_day` | 到期天数 | None（天） | certid, domain, expiretime | 60, 300, 3600 | first |

## 事件

`DescribeAlarmEvents --Namespace expire_day` 返回 **0 个事件**——SSL 证书到期告警走**指标阈值**（`Expireday`），不走事件告警。

## 告警用法（官方文档 https://cloud.tencent.com/document/product/400/54767）

**绑定到具体证书，不是配上就监控所有**。告警策略需要勾选"实例 ID"选择要监控的 SSL 证书实例（可多选）；策略本身不会自动覆盖账号下所有证书。要全量覆盖需把证书逐个绑上去（Terraform 可先查证书列表再 for_each 生成绑定）。

Terraform 配置示例（alarm-policy-v2 + alarm-policy-binding）：

```hcl
# 策略：到期天数 <= 30 触发
policy = {
  policy_name  = "ssl-cert-expire-30d"
  namespace    = "expire_day"     # 告警策略用 view key，不是 QCE/SSL
  monitor_type = "MT_QCE"
  conditions = [
    {
      rules = [{
        metric_name      = "Expireday"
        period           = 3600
        operator         = "le"     # 小于等于
        value            = "30"     # 剩余 30 天时触发
        continue_period  = 1
        notice_frequency = 86400    # 每天提醒一次
      }]
    }
  ]
}

# 绑定：dimensions_json 含三个维度（certid / domain / expiretime）
binding_objects = [{
  dimensions_json = jsonencode({
    certid     = "UrvAjFme"
    domain     = "testing.tronny.com"
    expiretime = "2036-01-25 09:36:23"   # 与 DescribeCertificates 的 CertEndTime 格式一致
  })
  region = "ap-jakarta"
}]
```

## 实测备注（2026-09-07，雅加达测试账号）

1. **上传来源证书无数据**：账号唯一已颁发证书（`UrvAjFme`，upload 来源，未部署）按单维度 `certid` 和完整三维度查询 `GetMonitorData`，维度组合均被接受但 `Timestamps/Values` 为空。推测 `Expireday` 指标只对**平台签发**或**已部署到云资源**（LB/CDN 等）的证书采集，纯上传未部署的证书不上报。待有快到期证书时复验。
2. **GetMonitorData 的 Period 只能用 60/300/3600**（86400 报 "no valid statistics type"）。
3. **控制台内置兜底**：SSL 证书服务自带到期提醒（消息中心 → 消息订阅，默认提前 30 天发短信/邮件给证书创建者），不依赖云监控、免配置。
4. 绑定 API 维度查询：单 `certid` 维度也能返回 DataPoint 结构（虽然值为空），说明维度校验通过；绑定到策略时建议传完整三维度。

## 刷新方式

```bash
tccli monitor DescribeBaseMetrics --Namespace QCE/SSL > metrics.json
tccli monitor DescribeAlarmEvents --Module monitor --Namespace expire_day > events.json
```
