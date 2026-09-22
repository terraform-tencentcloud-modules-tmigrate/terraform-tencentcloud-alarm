# MongoDB 集群实例级 alarm metric + events 清单 (cmongo_instance)

> 调研日期: 2026-09-21
> 数据源:
> - `tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace cmongo_instance`
> - `tccli monitor DescribeAlarmEvents --Module monitor --Namespace cmongo_instance`
> 用途: 集群实例级告警（CRUD / QPS / Delay / Max CPU/Memory）+ 所有 mongodb events 都在这里

## namespace

- **Metric namespace (alarm API)**: `cmongo_instance`
- **Product namespace (QCE)**: `QCE/CMONGO`

## 20 个 metric（全部 dimensions 都是 `target`，实例 ID 如 cmgo-xxxxx）

| MetricName | 中文 | Unit | 备注 |
|---|---|---|---|
| `Inserts` | 写入请求次数 | 次 | |
| `Reads` | 读取请求次数 | 次 | |
| `Updates` | 更新请求次数 | 次 | |
| `Deletes` | 删除请求次数 | 次 | |
| `Counts` | count 请求次数 | 次 | |
| `Aggregates` | 聚合请求次数 | 次 | |
| `Success` | 成功请求次数 | 次 | |
| `ClusterDiskusage` | 磁盘使用率 | % | 集群磁盘 |
| `Delay10` | 单位时间延迟次数 (10ms-50ms) | 次 | |
| `Delay50` | 单位时间延迟次数 (50ms-100ms) | 次 | |
| `Delay100` | 单位时间延迟次数 (100ms 以上) | 次 | 高延迟 |
| `Connper` | 连接使用率 | % | 0-100 |
| `Qps` | 每秒钟请求次数 | 次/秒 | 可用性指标 |
| `Commands` | command 请求次数 | Count | |
| `ClusterConn` | 连接数 | Count | 集群总连接 |
| `Syncdelayseconds` | 只读/灾备实例同步延迟 | s | |
| `MonogdMaxCpuUsage` | mongod 节点 cpu 最大使用率 | % | |
| `MongodMaxMemUsage` | mongod 节点内存最大使用率 | % | |
| `MongosMaxMemUsage` | mongos 节点内存最大使用率 | % | |
| `MonogsMaxCpuUsage` | mongos 节点 cpu 最大使用率 | % | |

## 22 个 events（mongodb 所有 events 都在 cmongo_instance namespace 下）

基础事件 4 个：
- `connection_overlimit` - 连接数超限
- `instance_out_of_disk` - 磁盘空间已耗尽
- `node_cpu_abnormal` - 节点 CPU 异常
- `db_primary_switch` - 数据库主从切换

ErrorEvent (基于云审计投递) 11 个：
- `mongodb:ErrorEvent:DbPrimarySwitch` - 数据库主从切换
- `mongodb:ErrorEvent:NodeCpuAbnormal` - 节点 CPU 异常
- `mongodb:ErrorEvent:NodeOom` - 节点 OOM
- `mongodb:ErrorEvent:NodeAbnormal` - 节点状态异常
- `mongodb:ErrorEvent:BackupFailed` - 备份失败
- `mongodb:ErrorEvent:RollbackAborted` - 回滚中止
- `mongodb:ErrorEvent:RollbackCompleted` - 回滚完成
- `mongodb:ErrorEvent:RollbackStarted` - 回滚开始
- `mongodb:ErrorEvent:StepDownFinished` - 角色降级完成
- `mongodb:ErrorEvent:StepDownStarted` - 角色降级开始
- `mongodb:ErrorEvent:RollbackTerminated` - 回滚终止

CloudEvent (基于云审计投递) 7 个：
- `mongodb:CloudEvent:ApiCall` - 云 API 操作
- `mongodb:CloudEvent:MiniProgramCall` - 小程序操作
- ... 等

## 告警 metric 配置示例

```yaml
namespace: "cmongo_instance"
conditions:
  - is_union_rule: 0
    rules:
      - metric_name: "ClusterDiskusage"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "Delay100"
        period: 60
        operator: "gt"
        value: "20"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "Qps"
        period: 60
        operator: "lt"
        value: "1"
        continue_period: 5
        notice_frequency: 300
      - metric_name: "Connper"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
event_conditions:
  - metric_name: "db_primary_switch"
  - metric_name: "connection_overlimit"
  - metric_name: "instance_out_of_disk"
  - metric_name: "mongodb:ErrorEvent:NodeOom"
  - metric_name: "mongodb:ErrorEvent:BackupFailed"
  - metric_name: "mongodb:ErrorEvent:NodeAbnormal"
```

## Dimensions

所有 metric 都是 `target`，binding 时传 `{ target = "cmgo-xxxxx" }`。

## 调研命令

```bash
tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace cmongo_instance
tccli monitor DescribeAlarmEvents --Module monitor --Namespace cmongo_instance
```
