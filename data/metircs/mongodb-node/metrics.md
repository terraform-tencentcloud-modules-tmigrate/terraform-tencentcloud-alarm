# MongoDB Mongod 节点级 alarm metric 清单 (CMONGO_NODE)

> 调研日期: 2026-09-21
> 数据源: `tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace CMONGO_NODE`
> 用途: 副本集 / 分片集群 Mongod 节点级告警（每个 Mongod 节点的 CPU/内存/网络/磁盘/连接）

## namespace

- **Metric namespace (alarm API)**: `CMONGO_NODE`
- **Product namespace (QCE)**: `QCE/CMONGO`（同产品但不同 view key）

## 13 个 metric（全部 dimensions 都是 `target`，节点 ID 如 cmgo-xxx-0）

| MetricName | 中文 | Unit | 备注 |
|---|---|---|---|
| `CpuUsage` | CPU 使用率 | % | 0-100 |
| `MemUsage` | 内存使用率 | % | 0-100 |
| `Diskusage` | 节点磁盘使用率 | % | 0-100 |
| `Disk` | 节点磁盘用量 | MBytes | 绝对值 |
| `Conn` | 连接数 | Count | 节点当前连接数 |
| `NetIn` | 网络入流量 | MB/s | |
| `NetOut` | 网络出流量 | MB/s | |
| `Qr` | Read 请求等待队列中的个数 | Count | 排队读 |
| `Qw` | Write 请求等待队列中的个数 | Count | 排队写 |
| `Ar` | WT 引擎的 ActiveRead | Count | WiredTiger 活跃读 |
| `Aw` | WT 引擎的 ActiveWrite | Count | WiredTiger 活跃写 |
| `TtlDeleted` | TTL 删除的数据条数 | Count | TTL 索引清理 |
| `TtlPass` | TTL 运转轮数 | Count | TTL 周期数 |

## 告警 metric 配置示例

```yaml
namespace: "CMONGO_NODE"
conditions:
  - is_union_rule: 0
    rules:
      - metric_name: "CpuUsage"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "MemUsage"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "Diskusage"
        period: 60
        operator: "gt"
        value: "70"
        continue_period: 1
        notice_frequency: 3600
      - metric_name: "Conn"
        period: 60
        operator: "gt"
        value: "500"
        continue_period: 1
        notice_frequency: 3600
```

## Dimensions

所有 metric 都是 `target`，binding 时传 `{ target = "cmgo-xxxx-0" }`（节点级 ID，不是实例 ID）。

## Events

CMONGO_NODE namespace 下**没有 events**（0 个）。事件在 `cmongo_instance` namespace 下（22 个）。

## 调研命令

```bash
# 查 metric
tccli monitor DescribeAlarmMetrics --Module monitor --MonitorType MT_QCE --Namespace CMONGO_NODE

# 查 event
tccli monitor DescribeAlarmEvents --Module monitor --Namespace CMONGO_NODE
```
