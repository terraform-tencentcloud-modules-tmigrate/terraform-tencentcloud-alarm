# MongoDB 副本集实例级 alarm metric 清单 (CMONGO_REPLICA)

> 调研日期: 2026-09-21
> 数据源: `tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace CMONGO_REPLICA`
> 用途: 副本集实例级告警（Cache / Oplog / 主从延迟 / HitRatio 等）

## namespace

- **Metric namespace (alarm API)**: `CMONGO_REPLICA`
- **Product namespace (QCE)**: `QCE/CMONGO`

## 6 个 metric（全部 dimensions 都是 `target`，副本集实例 ID 如 cmgo-xxxxx）

| MetricName | 中文 | Unit | 备注 |
|---|---|---|---|
| `CacheDirty` | Cache 脏数据百分比 | % | WT cache dirty |
| `CacheUsed` | Cache 使用百分比 | % | WT cache 使用率 |
| `ReplicaDiskusage` | 磁盘使用率 | % | 副本集实例磁盘 |
| `HitRatio` | cache 命中率 | % | 低于阈值告警 |
| `Oplogreservedtime` | oplog 保存时间 | 小时 | 低于阈值告警 |
| `SlaveDelay` | 主从单位时间内平均延迟 | s | 高于阈值告警 |

## 告警 metric 配置示例

```yaml
namespace: "CMONGO_REPLICA"
conditions:
  - is_union_rule: 0
    rules:
      - metric_name: "HitRatio"
        period: 60
        operator: "lt"
        value: "90"
        continue_period: 3
        notice_frequency: 3600
      - metric_name: "SlaveDelay"
        period: 60
        operator: "gt"
        value: "5"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "Oplogreservedtime"
        period: 60
        operator: "lt"
        value: "24"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "ReplicaDiskusage"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
```

## Dimensions

所有 metric 都是 `target`，binding 时传 `{ target = "cmgo-xxxxx" }`（实例 ID）。

## Events

CMONGO_REPLICA namespace 下**没有 events**（0 个）。事件在 `cmongo_instance` namespace 下。

## 调研命令

```bash
tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace CMONGO_REPLICA
tccli monitor DescribeAlarmEvents --Module monitor --Namespace CMONGO_REPLICA
```
