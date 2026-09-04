# ─── 查询 SQL Server 基础指标 ───
# namespace: QCE/SQLSERVER（云数据库 SQL Server）
# 不指定 metric_name，返回 QCE/SQLSERVER 下所有指标
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "sqlserver" {
  namespace = "QCE/SQLSERVER"
}

output "sqlserver_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.sqlserver.metric_set
}
