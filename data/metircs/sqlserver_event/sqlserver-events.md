# SQL Server 平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace sqlserver_instance`（provider 暂无查事件列表的 data source）。
> 原始输出存档：`events.json`。

## 结论：SQL Server 无平台事件

`DescribeAlarmEvents` 对 `sqlserver_instance`（namespace `QCE/SQLSERVER`）返回 **0 个事件**。SQL Server 只支持指标告警（106 个指标见 `data/metircs/sqlserver/sqlserver-metrics.md`），不支持平台事件告警。

```hcl
# SQL Server 的 event_conditions 没有可配的事件名，只能配 conditions（指标）
conditions = [
  {
    rules = [
      {
        metric_name      = "CpuUsage"
        period           = 60
        operator         = "ge"
        value            = "80"
        continue_period  = 1
        notice_frequency = 3600
      }
    ]
  }
]
```

## 刷新方式

```bash
tccli monitor DescribeAlarmEvents --Module monitor --Namespace sqlserver_instance > events.json
```

Namespace 用 view key（`sqlserver_instance`），不是 `QCE/SQLSERVER`（前缀格式会报错）。
