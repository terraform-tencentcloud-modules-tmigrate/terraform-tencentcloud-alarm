# CLB 平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace lb_lbid_lb`（provider 暂无查事件列表的 data source）。
> 原始输出存档：`events.json`。

事件用于 `tencentcloud_monitor_alarm_policy` 的 `event_conditions`，与 `conditions`（指标）可在同一个 policy（MT_QCE）里共存。事件告警无阈值，只需 `metric_name`（事件名）：

```hcl
event_conditions {
  metric_name = "clb:ErrorEvent:BreakDown"
}
```

## 一、异常/故障事件（`clb:ErrorEvent:` 前缀，6 个）

| EventName | 描述 |
|---|---|
| `clb:ErrorEvent:BreakDown` | 负载均衡故障事件 |
| `clb:ErrorEvent:ClbVipBlock` | 外网ip被封堵 |
| `clb:ErrorEvent:ExecStart` | 负载均衡变更执行开始事件 |
| `clb:ErrorEvent:ExecEnd` | 负载均衡变更执行结束事件 |
| `clb:ErrorEvent:RollbackStart` | 负载均衡变更回滚开始事件 |
| `clb:ErrorEvent:RollbackEnd` | 负载均衡变更回滚结束事件 |

## 二、云审计操作事件（`clb:CloudEvent:` 前缀，3 个）

| EventName | 描述 |
|---|---|
| `clb:CloudEvent:ApiCall` | 云API操作事件（基于云审计投递） |
| `clb:CloudEvent:ConsoleCall` | 控制台操作事件（基于云审计投递） |
| `clb:CloudEvent:MiniProgramCall` | 小程序操作事件（基于云审计投递） |

---

## 备注

1. **只有 `lb_lbid_lb` 有事件**（9 个）。其他 CLB view key（`clb_lb` / `clb_lis` / `clb_lis_view` / `lb_hc_vport` / `lb_lbid_lis` / `lb_rsport` / `lbid_*` / `private_lb_*` / `clb_l7listener_internal` / `clb_tls_*` / `CLB_LISTENER_PRIVATE` 等）均返回 0 个事件。
2. **刷新方式**：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace lb_lbid_lb > events.json`，Namespace 用 view key，不是 `QCE/LB_PUBLIC`。
3. **典型告警组合**：负载均衡故障（`clb:ErrorEvent:BreakDown`）+ 外网 IP 被封堵（`clb:ErrorEvent:ClbVipBlock`）+ 变更执行/回滚事件。
