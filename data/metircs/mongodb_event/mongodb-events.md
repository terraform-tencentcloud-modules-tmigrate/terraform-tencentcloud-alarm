# MongoDB 平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace <view_key>`（provider 暂无查事件列表的 data source）。
> 原始输出存档：`events.json`（cmongo_instance）。

事件用于 `tencentcloud_monitor_alarm_policy` 的 `event_conditions`，与 `conditions`（指标）可在同一个 policy（MT_QCE）里共存。事件告警无阈值，只需 `metric_name`（事件名）：

```hcl
event_conditions {
  metric_name = "db_primary_switch"
}
```

## 一、基础平台事件（无前缀，4 个）

| EventName | 描述 |
|---|---|
| `connection_overlimit` | 连接数超限 |
| `instance_out_of_disk` | 磁盘空间已耗尽 |
| `node_cpu_abnormal` | 节点CPU异常 |
| `db_primary_switch` | 数据库主从切换 |

## 二、异常/故障事件（`mongodb:ErrorEvent:` 前缀，15 个）

实例生命周期类：

| EventName | 描述 |
|---|---|
| `mongodb:ErrorEvent:InstanceDeleted` | 实例销毁 |
| `mongodb:ErrorEvent:InstanceIsolated` | 实例隔离 |
| `mongodb:ErrorEvent:InstanceSyncStatus` | 只读/灾备同步状态异常 |
| `mongodb:ErrorEvent:InstanceBackupTaskStatusAbnormal` | 实例备份任务状态异常 |

节点健康类：

| EventName | 描述 |
|---|---|
| `mongodb:ErrorEvent:NodeAbnormal` | 节点状态异常 |
| `mongodb:ErrorEvent:NodeCpuAbnormal` | 节点CPU异常 |
| `mongodb:ErrorEvent:NodeOom` | 节点OOM |
| `mongodb:ErrorEvent:NodeReboot` | 节点重启 |
| `mongodb:ErrorEvent:SSLCertAboutToExpire` | SSL证书即将过期 |

数据/备份类：

| EventName | 描述 |
|---|---|
| `mongodb:ErrorEvent:DbPrimarySwitch` | 数据库主从切换 |
| `mongodb:ErrorEvent:ConnectionOverlimit` | 连接数超限 |
| `mongodb:ErrorEvent:InstanceOutOfDisk` | 磁盘空间即将耗尽 |
| `mongodb:ErrorEvent:BackupFailed` | 备份失败 |
| `mongodb:ErrorEvent:BackupStorageSizeExceed` | 备份超额告警 |
| `mongodb:ErrorEvent:NotBackupLastPeriod` | 上一个备份周期未备份 |

## 三、云审计操作事件（`mongodb:CloudEvent:` 前缀，3 个）

| EventName | 描述 |
|---|---|
| `mongodb:CloudEvent:ApiCall` | 云API操作事件（基于云审计投递） |
| `mongodb:CloudEvent:ConsoleCall` | 控制台操作事件（基于云审计投递） |
| `mongodb:CloudEvent:MiniProgramCall` | 小程序操作事件（基于云审计投递） |

---

## 备注

1. **只有 `cmongo_instance` 有事件**。MongoDB 其他 view key（`CMONGO_NODE` / `CMONGO_REPLICA` / `cmongo_cd_mongod` / `cmongo_mongos_node`）均返回 0 个事件。
2. **刷新方式**：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace cmongo_instance > events.json`，Namespace 用 view key，不是 `QCE/CMONGO`。
3. **典型告警组合**：主从切换（`db_primary_switch`）+ 连接数超限（`connection_overlimit`）+ 磁盘耗尽（`instance_out_of_disk`）+ 备份失败（`mongodb:ErrorEvent:BackupFailed`）。
