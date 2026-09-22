# ─── 查询 MongoDB 集群实例 metric + events (cmongo_instance) ───
# namespace: QCE/CMONGO（view key: cmongo_instance）
# cmongo_instance 是集群实例级 namespace (CRUD / QPS / 连接使用率 / Delay / MaxCpuUsage 等)
# 20 个 metric + 22 个 events (mongodb 全部 events 都在这里)
# Dimensions 都是 target (实例 ID)

data "tencentcloud_monitor_alarm_basic_metric" "mongodb_cluster" {
  namespace = "QCE/CMONGO"
}

output "mongodb_cluster_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.mongodb_cluster.metric_set
}
