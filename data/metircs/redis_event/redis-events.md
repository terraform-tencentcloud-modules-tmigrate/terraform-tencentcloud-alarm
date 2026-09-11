# Redis 平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace <view_key>`（provider 暂无查事件列表的 data source）。
> 原始输出存档：`events-mem-edition.json`（内存版）、`events-uuid.json`（老版 CKV）。

事件用于 `tencentcloud_monitor_alarm_policy` 的 `event_conditions`，与 `conditions`（指标）可在同一个 policy（MT_QCE）里共存。事件告警无阈值，只需 `metric_name`（事件名）：

```hcl
event_conditions {
  metric_name = "redis_master_slave_switched"
}
```

## 一、Redis 内存版（namespace `redis_mem_edition`，22 个有效事件）

基础平台事件（无前缀，4 个）：

| EventName | 描述 |
|---|---|
| `redis_master_slave_switched` | 主备切换 |
| `redis_readonly_replica_not_available` | 只读副本不可用 |
| `redis_readonly_replica_switched` | 只读副本故障切换 |
| `redis_service_not_available` | 服务不可用 |

异常/故障事件（`redis:ErrorEvent:` 前缀，15 个）：

| EventName | 描述 |
|---|---|
| `redis:ErrorEvent:RedisMasterSlaveSwitched` | 主备切换 |
| `redis:ErrorEvent:RedisReadonlyReplicaSwitched` | 只读副本故障切换 |
| `redis:ErrorEvent:RedisReadonlyReplicaNotAvailable` | 只读副本不可用 |
| `redis:ErrorEvent:RedisServiceNotAvailable` | 服务不可用 |
| `redis:ErrorEvent:SwitchToPrimaryInstance` | 灾备实例切换为主实例 |
| `redis:ErrorEvent:ProxySwitched` | Proxy故障切换 |
| `redis:ErrorEvent:ServerfailureInstanceMigration` | 母机常规维护触发的实例迁移 |
| `redis:ErrorEvent:IsolatePolarisServices` | 北极星服务隔离/解隔离 |
| `redis:ErrorEvent:RedisClusterHaRisk` | 集群写入流量过大存在主从断开隐患 |
| `redis:ErrorEvent:InstanceDestroy` | 实例已销毁 |
| `redis:ErrorEvent:InstanceIsolated` | 实例已隔离 |
| `redis:ErrorEvent:ExecStart` | 云数据库Redis变更执行开始事件 |
| `redis:ErrorEvent:ExecEnd` | 云数据库Redis变更执行结束事件 |
| `redis:ErrorEvent:RollbackStart` | 云数据库Redis变更回滚开始事件 |
| `redis:ErrorEvent:RollbackEnd` | 云数据库Redis变更回滚结束事件 |

云审计操作事件（`redis:CloudEvent:` 前缀，3 个）：

| EventName | 描述 |
|---|---|
| `redis:CloudEvent:ApiCall` | 云API操作事件（基于云审计投递） |
| `redis:CloudEvent:ConsoleCall` | 控制台操作事件（基于云审计投递） |
| `redis:CloudEvent:MiniProgramCall` | 小程序操作事件（基于云审计投递） |

## 二、Redis 标准架构老版 CKV（namespace `redisUuid`，4 个）

| EventName | 描述 |
|---|---|
| `redis:ErrorEvent:MasterSlaveSwitched` | 主备切换(1分钟粒度) |
| `redis:ErrorEvent:ReadonlyReplicaSwitched` | 只读副本故障切换(1分钟粒度) |
| `redis:ErrorEvent:ReadonlyReplicaNotAvailable` | 只读副本不可用(1分钟粒度) |
| `redis:ErrorEvent:ServiceNotAvailable` | 服务不可用(1分钟粒度) |

---

## 备注

1. **刷新方式**：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace redis_mem_edition > events-mem-edition.json`，Namespace 用 view key（`redis_mem_edition` / `redisUuid`），不是 `QCE/REDIS_MEM`。
2. **内存版与老版命名不同**：老版事件都带 `redis:ErrorEvent:` 前缀且带"(1分钟粒度)"后缀；内存版有 4 个无前缀基础事件 + 带前缀新事件。当前主流（内存版）策略建议用无前缀的 4 个基础事件 + 按需选 `redis:ErrorEvent:` 前缀事件。
3. **脏数据**：`events-mem-edition.json` 里有 4 条 EventName 为中文描述、Description 为空的条目，本文档已过滤。
4. **Memcached 提示**：`memcached_instance` 也映射到 `QCE/REDIS_MEM`（见 namespaces.md），事件体系与 Redis 内存版共用。
