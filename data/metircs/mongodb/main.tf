# ─── 查询 MongoDB 基础指标 ───
# namespace: QCE/CMONGO（云数据库 MongoDB，含 instance/mongos/mongod node/replica set 等 view key）
# 不指定 metric_name，返回 QCE/CMONGO 下所有指标
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "mongodb" {
  namespace = "QCE/CMONGO"
}

output "mongodb_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.mongodb.metric_set
}
