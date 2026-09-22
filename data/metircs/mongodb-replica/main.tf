# ─── 查询 MongoDB 副本集实例 metric (CMONGO_REPLICA) ───
# namespace: QCE/CMONGO（view key: CMONGO_REPLICA）
# CMONGO_REPLICA 是副本集实例级 namespace (Cache / Oplog / SlaveDelay / HitRatio 等)
# 6 个 metric: CacheDirty / CacheUsed / ReplicaDiskusage / HitRatio / Oplogreservedtime / SlaveDelay
# Dimensions 都是 target (副本集实例 ID, 如 target=cmgo-xxxxx)

data "tencentcloud_monitor_alarm_basic_metric" "mongodb_replica" {
  namespace = "QCE/CMONGO"
}

output "mongodb_replica_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.mongodb_replica.metric_set
}
