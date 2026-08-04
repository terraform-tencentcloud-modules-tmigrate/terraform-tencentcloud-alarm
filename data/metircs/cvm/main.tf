# ─── 查询 CVM 基础指标 ───
# namespace: QCE/CVM（云服务器）
# 不指定 metric_name，返回 QCE/CVM 下所有指标
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "cvm" {
  namespace = "QCE/CVM"
}

output "cvm_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.cvm.metric_set
}
