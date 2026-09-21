# ─── 查询 MySQL（CDB）基础指标 ───
# namespace: QCE/CDB（云数据库 MySQL，含 master/slave/cluster/proxy/libradb 等 view key）
# 不指定 metric_name，返回 QCE/CDB 下所有指标
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "mysql" {
  namespace = "QCE/CDB"
}

output "mysql_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.mysql.metric_set
}
