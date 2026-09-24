# CLB 内网基础监控指标清单

> 来源：`data.tencentcloud_monitor_alarm_basic_metric`（namespace=`QCE/LB_PRIVATE`），共 76 个指标。

| Metric Name | 中文名 | 单位 | 维度 | 支持周期(秒) | 说明 |
|---|---|---|---|---|---|
| `ClbHttp2xx` | 负载均衡返回的2xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600,86400 | 负载均衡返回的2xx状态码 |
| `ClbHttp3xx` | 负载均衡返回的3xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的3xx状态码 |
| `ClbHttp404` | 负载均衡返回的404状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的404状态码 |
| `ClbHttp499` | 负载均衡返回的499状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的499状态码 |
| `ClbHttp4xx` | 负载均衡返回的4xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的4xx状态码 |
| `ClbHttp502` | 负载均衡返回的502状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的502状态码 |
| `ClbHttp503` | 负载均衡返回的503状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的503状态码 |
| `ClbHttp504` | 负载均衡返回的504状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的504状态码 |
| `ClbHttp5xx` | 负载均衡返回的5xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 负载均衡返回的5xx状态码 |
| `ClbOther` | 其它状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600,86400 | 其它状态码 |
| `Clienttlsnegotiationerror` | 客户端TLS握手失败数 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600,86400 | 每分钟内客户端TLS握手失败数 |
| `ClientAccIntraffic` | 入流量 | MB | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的入流量 |
| `ClientAccOuttraffic` | 出流量 | MiBytes | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的出流量 |
| `ClientConcurConn` | 并发连接数 | Count | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的并发连接数 |
| `ClientConnum` | 客户端到LB的活跃连接数 | Count | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的活跃连接数 |
| `ClientInactiveConn` | 非活跃连接数 | Count | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的非活跃连接数 |
| `ClientInpkg` | 入包量 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的入包量 |
| `ClientIntraffic` | 入带宽 | Mbps | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的入带宽 |
| `ClientNewConn` | 新建连接数 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的新建连接数 |
| `ClientOutpkg` | 出包量 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的出包量 |
| `ClientOuttraffic` | 出带宽 | Mbps | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的出带宽 |
| `ConcurConnVipRatio` | 最大连接数利用率 | % | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的最大连接数利用率 |
| `ConNum` | 当前连接数 | count | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 当前连接数 |
| `Connumlcus` | 并发连接数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过并发连接数性计算的后付费性能容量单位个数 |
| `ConnRatio` | 连接利用率 | % | vip,vpcid | 60,300,3600,86400 | 连接利用率 |
| `Consumedlcus` | 后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 负载均衡实例使用的后付费性能容量单位个数 |
| `DropQps` | 丢弃QPS | Count | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 丢弃请求数 |
| `DropTotalConns` | 丢弃连接数 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的丢弃连接数 |
| `HealthRsCount` | 健康检查正常RS数 | Count | appid,lb_vpcid,protocol,rsip,vip,vport | 60,300,3600,86400 | 健康检查正常RS数 |
| `Http2xx` | 后端服务器返回的2xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的2xx状态码 |
| `Http3xx` | 后端服务器返回的3xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的3xx状态码 |
| `Http404` | 后端服务器返回的404状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的404状态码 |
| `Http499` | 后端服务器返回的499状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的499状态码 |
| `Http4xx` | 后端服务器返回的4xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的4xx状态码 |
| `Http502` | 后端服务器返回的502状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的502状态码 |
| `Http503` | 后端服务器返回的503状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的503状态码 |
| `Http504` | 后端服务器返回的504状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的504状态码 |
| `Http5xx` | 后端服务器返回的5xx状态码 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 后端服务器返回的5xx状态码 |
| `InPkg` | 入包量 | count | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 入包量 |
| `InTraffic` | in_byte | Mbps | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 入带宽 |
| `IntrafficVipRatio` | 入带宽利用率 | % | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的入带宽利用率 |
| `InDropBits` | 丢弃入带宽 | Bits | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的丢弃入带宽 |
| `InDropPkts` | 丢弃流入数据包 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的丢弃流入数据包 |
| `Newconnlcus` | 新建连接数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过新建连接数计算的后付费性能容量单位个数 |
| `NewConn` | 新增连接数 | count | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 新增连接数 |
| `NewConnVipRatio` | 新建连接数利用率 | % | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的新建连接数利用率 |
| `OutPkg` | 出包量 | count | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 出包量 |
| `OutTraffic` | out_byte | Mbps | loadBalancerPort,protocol,vip,vpcId | 60,300,3600,86400 | 出带宽 |
| `OuttrafficVipRatio` | 出带宽利用率 | % | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的出带宽利用率 |
| `OutDropBits` | 丢弃出带宽 | Bits | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的丢弃出带宽 |
| `OutDropPkts` | 丢弃流出数据包 | Count/s | loadBalancerPort,protocol,vip,vpcId | 10,60,300,3600,86400 | 客户端到LB的丢弃流出数据包 |
| `OverloadCurConn` | 并发连接数 | Count | vip,vpcid | 60,300,3600,86400 | 并发连接数 |
| `Processedtrafficlcus` | 已处理流量后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过已处理流量计算的后付费性能容量单位个数 |
| `PvvConnum` | 新增连接数 | count | protocol,vip,vpcid,vport | 60,300,3600,86400 | 新增连接数 |
| `PvvInpkg` | 入包量 | count | protocol,vip,vpcid,vport | 60,300,3600,86400 | 入包量 |
| `PvvIntraffic` | in_byte | bps | protocol,vip,vpcid,vport | 60,300,3600,86400 | 入带宽 |
| `PvvNewConn` | 当前连接数 | count | protocol,vip,vpcid,vport | 60,300,3600,86400 | 当前连接数 |
| `PvvOutpkg` | 出包量 | count/s | protocol,vip,vpcid,vport | 60,300,3600,86400 | 出包量 |
| `PvvOuttraffic` | out_byte | bps | protocol,vip,vpcid,vport | 60,300,3600,86400 | 出带宽 |
| `QpsVipRatio` | QPS利用率 | % | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | QPS利用率 |
| `ReqAvg` | 平均请求时间 | ms | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 平均请求时间 |
| `ReqMax` | 请求最大时延 | ms | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 请求最大时延 |
| `RspAvg` | 平均响应时间 | ms | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 平均响应时间 |
| `RspMax` | 最大响应时间 | ms | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 最大响应时间 |
| `RspTimeout` | 响应超时个数 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 响应超时个数 |
| `Ruleevaluationslcus` | 规则评估数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过规则评估数计算的后付费性能容量单位个数 |
| `SnatFail` | 连接失败数 | Count | vip,vpcid | 60,300,3600,86400 | 连接失败数 |
| `SuccReq` | 每分钟成功请求数 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 每分钟成功请求数 |
| `TotalReq` | 每秒请求数 | Count/s | appid,protocol,rsip,rsport,rule_vpcid,vip,vport | 60,300,3600 | 接收请求数 |
| `UnhealthRsCount` | 健康检查异常RS数 | Count | appid,lb_vpcid,protocol,rsip,vip,vport | 60,300,3600 | 健康检查异常RS数 |
| `VvConnum` | 新增连接数 | count | vip,vpcid | 60,300,3600,86400 | 新增连接数 |
| `VvInpkg` | 入包量 | count | vip,vpcid | 60,300,3600,86400 | 入包量 |
| `VvIntraffic` | in_byte | bps | vip,vpcid | 60,300,3600,86400 | 入带宽 |
| `VvNewConn` | 当前连接数 | count | vip,vpcid | 60,300,3600,86400 | 当前连接数 |
| `VvOutpkg` | 出包量 | count/s | vip,vpcid | 60,300,3600,86400 | 出包量 |
| `VvOuttraffic` | out_byte | bps | vip,vpcid | 60,300,3600,86400 | 出带宽 |

## 维度分布
- `appid,protocol,rsip,rsport,rule_vpcid,vip,vport`: 29 个指标
- `loadBalancerPort,protocol,vip,vpcId`: 25 个指标
- `vip,vpcid`: 9 个指标
- `protocol,vip,vpcid,vport`: 6 个指标
- `AppId,loadBalancerId`: 5 个指标
- `appid,lb_vpcid,protocol,rsip,vip,vport`: 2 个指标

## ⚠️ 铁律：metrics 表不一定准，写告警策略前必须用 tccli 按 view 实测

metrics 表是用 `data.tencentcloud_monitor_alarm_basic_metric` data source 查的，查的是 `QCE/LB_PRIVATE` 大 namespace 下的所有 metric（76 个），**没有按 view 拆分**。已知问题：

1. **同一 namespace 下不同 view 的 metric 是子集**，metrics 表记的 metric 可能不在你选的 view 下
2. **metric name 可能不同**，如 metrics 表记 `QpsVipRatio`，但 `private_lb_lb_to_rs_l7` view 下实际是 `21634`（数字 ID）
3. **维度可能不同**，如 metrics 表记 `appid,protocol,rsip,rsport,rule_vpcid,vip,vport`（7 维），但 view 实测是 `appid,rule_vpcid,vip`（3 维）

### 用 tccli 实测 view 下可用 metric 的步骤

```bash
# 1. 加载凭据
source ~/.tencentcloud/profile-cpt
export TENCENTCLOUD_REGION=ap-shanghai

# 2. 用 view ID 查（不是 QCE/LB_PRIVATE，是 namespaces.md 里的 ID 列）
tccli monitor DescribeAlarmMetrics \
  --Module Monitor \
  --MonitorType MT_QCE \
  --Namespace <view_id>
```

例：查 `private_lb_lb_to_rs_l7`（Private Load-Balancer About QPS monitor）
```bash
tccli monitor DescribeAlarmMetrics \
  --Module Monitor \
  --MonitorType MT_QCE \
  --Namespace private_lb_lb_to_rs_l7
```

返回的 `MetricSet` 里每个 metric 的 `MetricName` 和 `Dimensions.DimensionKey` 才是写告警策略和 binding 时该用的值。

## 按 View 实测结果（API 返回 2026-09-24，ap-shanghai）

### `private_lb_client_to_clb` — Private Load-Balancer Client-to-LB Client-to-CLB monitor
> 维度: `loadBalancerPort,protocol,vip,vpcId`

| MetricName | Description | Unit |
|------------|-------------|------|
| ClientInpkg | 客户端到LB的入包量 | Count/s |
| ClientOutpkg | 客户端到LB的出包量 | Count/s |
| ClientIntraffic | 客户端到LB的入带宽 | Mbps |
| ClientOuttraffic | 客户端到LB的出带宽 | Mbps |
| ClientInactiveConn | 客户端到LB的非活跃连接数 | Count |
| ClientConnum | 客户端到LB的活跃连接数 | Count |
| ClientNewConn | 客户端到LB的新建连接数 | Count/s |
| ClientConcurConn | 客户端到LB的并发连接数 | Count |
| IntrafficVipRatio | 入带宽利用率 | % |

### `private_lb_client_to_lb_other` — Private Load-Balancer About drop/usage monitor
> 维度: `loadBalancerPort,protocol,vip,vpcId`

| MetricName | Description | Unit |
|------------|-------------|------|
| DropTotalConns | 丢弃连接数 | count/s |
| InDropPkts | 丢弃流入数据包 | Count/s |
| OutDropPkts | 丢弃流出数据包 | Count/s |
| InDropBits | 丢弃入带宽 | Bit/s |
| OutDropBits | 丢弃出带宽 | Bit/s |
| IntrafficVipRatio | 入带宽利用率 | % |
| OuttrafficVipRatio | 出带宽利用率 | % |
| ConcurConnVipRatio | 并发连接数利用率 | % |
| NewConnVipRatio | 新建连接数利用率 | % |

### `private_lb_l4_client_to_lb` — Private Load-Balancer L4-Listener Client-to-LB monitor
> 维度: `loadBalancerPort,protocol,vip`

| MetricName | Description | Unit |
|------------|-------------|------|
| ClientConnum | 客户端到LB的活跃连接数 | Count |
| ClientNewConn | 客户端到LB的新建连接数 | Count/s |
| ClientInpkg | 客户端到LB的入包量 | Count/s |
| ClientOutpkg | 客户端到LB的出包量 | Count/s |
| ClientIntraffic | 客户端到LB的入带宽 | Mbps |
| ClientOuttraffic | 客户端到LB的出带宽 | Mbps |
| ClientConcurConn | 客户端到LB的并发连接数 | Count |
| ClientInactiveConn | 客户端到LB的非活跃连接数 | Count |

### `private_lb_l7_client_to_lb` — Private Load-Balancer L7-Listener Client-to-LB monitor
> 维度: `loadBalancerPort,protocol,vip`

| MetricName | Description | Unit |
|------------|-------------|------|
| ClientConnum | 客户端到LB的活跃连接数 | Count |
| ClientNewConn | 客户端到LB的新建连接数 | Count/s |
| ClientInpkg | 客户端到LB的入包量 | Count/s |
| ClientOutpkg | 客户端到LB的出包量 | Count/s |
| ClientIntraffic | 客户端到LB的入带宽 | Mbps |
| ClientOuttraffic | 客户端到LB的出带宽 | Mbps |
| ClientConcurConn | 客户端到LB的并发连接数 | Count |
| ClientInactiveConn | 客户端到LB的非活跃连接数 | Count |

### `private_lb_lb_to_rs` — Private Load-Balancer LB-to-RS monitor
> 维度: `vip,vpcid`

| MetricName | Description | Unit |
|------------|-------------|------|
| VvIntraffic | 入带宽 | Mbps |
| VvOuttraffic | 出带宽 | Mbps |

### `private_lb_lb_to_rs_l7` — Private Load-Balancer About QPS monitor
> 维度: `appid,rule_vpcid,vip`（注意：`21634` 的维度为空，binding 时需实测）

| MetricName | Description | Unit |
|------------|-------------|------|
| DropQps | 丢弃QPS | Count |
| TotalReq | 每秒请求数 | Count |
| 21634 | QPS利用率 | % |

> ⚠️ 注意：metrics 表里记的 `QpsVipRatio` 在此 view 下不存在，实际 metric name 是 `21634`（数字 ID）。
> `DropQps` 在此 view 下可用，与 metrics 表一致。
> 维度也不同：metrics 表记的 `appid,protocol,rsip,rsport,rule_vpcid,vip,vport` 不对，实测是 `appid,rule_vpcid,vip`。

> 凡是查 CLB 告警 metric，先跑一遍 tccli 确认，不要直接用 metrics 表。
