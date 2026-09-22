# ─── 查询 MongoDB Mongod 节点级 metric (CMONGO_NODE) ───
# namespace: QCE/CMONGO（view key: CMONGO_NODE）
# CMONGO_NODE 是 Mongod 节点级 namespace (副本集 / 分片集群 Mongod 节点都用这个)
# 13 个 metric: CpuUsage / MemUsage / Qr / Qw / NetIn / NetOut / Conn / Disk / Ar / Aw / TtlDeleted / TtlPass / Diskusage
# Dimensions 都是 target (节点 ID, 如 target=cmgo-xxxxx-0)

data "tencentcloud_monitor_alarm_basic_metric" "mongodb_node" {
  namespace = "QCE/CMONGO"
}

output "mongodb_node_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.mongodb_node.metric_set
}
