# MySQL（CDB）平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace <view_key>`（provider 暂无查事件列表的 data source）。
> 原始输出存档：`events-detail.json`（cdb_detail，60 个）、`events-cluster.json`（cdb_cluster，3 个）。

事件用于 `tencentcloud_monitor_alarm_policy` 的 `event_conditions`，与 `conditions`（指标）可在同一个 policy（MT_QCE）里共存。事件告警无阈值，只需 `metric_name`（事件名）：

```hcl
event_conditions {
  metric_name = "switch"
}
```

## 一、基础平台事件（无前缀，cdb_detail，9 个）

| EventName | 描述 |
|---|---|
| `outofmemory` | 内存OOM |
| `outofstorage` | 硬盘超限 |
| `switch` | 主从切换 |
| `roremove` | 只读实例剔除 |
| `backend_instance_migration` | 服务器故障导致实例迁移 |
| `auditclose` | 审计功能关闭 |
| `inst_rep_status` | 实例复制状态 |
| `proxy_node_removal` | 数据库代理挂载节点剔除 |
| `proxy_not_available` | 数据库代理异常 |

## 二、异常/故障事件（`cdb:ErrorEvent:` 前缀，cdb_detail，48 个）

主备/节点健康类：

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:Switch` | 主从切换 |
| `cdb:ErrorEvent:SwitchBinlogPOS` | 主备切换位点信息 |
| `cdb:ErrorEvent:PlannedSwitch` | 计划内主备切换 |
| `cdb:ErrorEvent:MasterNotAvailable` | 主节点服务故障 |
| `cdb:ErrorEvent:MasterNotAvailableRecovery` | 主节点服务故障恢复 |
| `cdb:ErrorEvent:SlaveNotAvailable` | 备节点服务故障 |
| `cdb:ErrorEvent:SlaveNotAvailableRecovery` | 备节点服务故障恢复 |
| `cdb:ErrorEvent:MasterHealthCheckError` | 主节点服务拨测异常 |
| `cdb:ErrorEvent:MasterHealthCheckRecovery` | 主节点服务拨测异常恢复 |
| `cdb:ErrorEvent:SlaveHealthCheckError` | 备节点服务拨测异常 |
| `cdb:ErrorEvent:SlaveHealthCheckRecovery` | 备节点服务拨测异常恢复 |
| `cdb:ErrorEvent:Restart` | 实例重启 |
| `cdb:ErrorEvent:Rebuild` | 异常故障导致实例计算资源重建 |
| `cdb:ErrorEvent:ServerFailureNodeMigration` | 节点服务异常导致节点重建 |
| `cdb:ErrorEvent:BackendInstanceMigration` | 服务器存在隐患导致实例迁移 |
| `cdb:ErrorEvent:DiskOverUseError` | 数据库实例磁盘超限导致实例迁移 |

只读实例/代理类：

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:Roremove` | 只读实例剔除 |
| `cdb:ErrorEvent:RONodeException` | 只读节点服务检测异常 |
| `cdb:ErrorEvent:RONodeExceptionRecovery` | 只读节点服务异常恢复 |
| `cdb:ErrorEvent:RWNodeException` | 读写节点服务检测异常 |
| `cdb:ErrorEvent:RWNodeExceptionRecovery` | 读写节点服务异常恢复 |
| `cdb:ErrorEvent:RoNodeRepStatus` | 节点复制状态 |
| `cdb:ErrorEvent:InstRepStatus` | 实例复制状态 |
| `cdb:ErrorEvent:ProxyNodeRemoval` | 数据库代理挂载节点剔除 |
| `cdb:ErrorEvent:ProxyNotAvailable` | 数据库代理异常 |

资源/负载类：

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:Outofmemory` | 内存OOM |
| `cdb:ErrorEvent:MemoryUsedHigh` | 内存使用率过高 |
| `cdb:ErrorEvent:Outofstorage` | 实例只读（硬盘超限） |
| `cdb:ErrorEvent:InstHighLoad` | 数据库实例高负载 |
| `cdb:ErrorEvent:OverusedReadonlySet` | 磁盘使用超限锁定 |
| `cdb:ErrorEvent:OverusedReadWriteSet` | 实例解除锁定 |
| `cdb:ErrorEvent:OverusedPreReadonly` | 实例将被锁定 |
| `cdb:ErrorEvent:CPUContraction` | CPU性能回缩 |
| `cdb:ErrorEvent:CPUExpansion` | CPU性能扩容 |
| `cdb:ErrorEvent:CPUExpansionFailed` | CPU性能扩容失败 |
| `cdb:ErrorEvent:ExclusiveCrossNuma` | 实例跨NUMA |

审计/备份类：

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:AuditLowRisk` | 数据库审计低风险 |
| `cdb:ErrorEvent:AuditMediumRisk` | 数据库审计中风险 |
| `cdb:ErrorEvent:AuditHighRisk` | 数据库审计高风险 |
| `cdb:ErrorEvent:BackupFailed` | 实例备份失败 |

变更执行类：

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:ExecStart` | 云数据库MySQL变更执行开始事件 |
| `cdb:ErrorEvent:ExecEnd` | 云数据库MySQL变更执行结束事件 |
| `cdb:ErrorEvent:RollbackStart` | 云数据库MySQL变更回滚开始事件 |
| `cdb:ErrorEvent:RollbackEnd` | 云数据库MySQL变更回滚结束事件 |
| `cdb:ErrorEvent:ReleaseSuccess` | 云数据库MySQL变更发布成功 |
| `cdb:ErrorEvent:ReleaseFail` | 云数据库MySQL变更发布失败 |
| `cdb:ErrorEvent:ReleaseCancel` | 云数据库MySQL变更发布取消 |
| `cdb:ErrorEvent:ReleaseApproveSuccess` | 云数据库MySQL变更审批成功 |

## 三、云审计操作事件（`cdb:CloudEvent:` 前缀，3 个）

| EventName | 描述 |
|---|---|
| `cdb:CloudEvent:ApiCall` | 云API操作事件（基于云审计投递） |
| `cdb:CloudEvent:ConsoleCall` | 控制台操作事件（基于云审计投递） |
| `cdb:CloudEvent:MiniProgramCall` | 小程序操作事件（基于云审计投递） |

## 四、集群级事件（cdb_cluster，3 个）

| EventName | 描述 |
|---|---|
| `cdb:ErrorEvent:InstanceDeleted` | 实例删除 |
| `cdb:ErrorEvent:InstanceIsolated` | 实例隔离 |
| `cdb:ErrorEvent:OverusedUnlockPreReadonly` | 实例预锁定解除 |

---

## 备注

1. **只有 `cdb_detail`（60）和 `cdb_cluster`（3）有事件**。其他 view key（`CDB_SLAVE` / `cdb_libradb_instance` / `cdb_libradb_node` / `cdb_proxy`）均返回 0 个事件。
2. **刷新方式**：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace cdb_detail > events-detail.json`，Namespace 用 view key，不是 `QCE/CDB`。
3. **典型告警组合**：主从切换（`switch`）+ 内存OOM（`outofmemory`）+ 硬盘超限（`outofstorage`）+ 主节点故障（`cdb:ErrorEvent:MasterNotAvailable`）+ 备份失败（`cdb:ErrorEvent:BackupFailed`）。
