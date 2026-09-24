# ─── 查询 CLB（负载均衡）基础指标 ───
# namespace:
#   QCE/LB_PUBLIC  —— 公网 CLB（含 lb/vip/listener/rs 等多种维度）
#   QCE/LB_PRIVATE —— 内网 CLB
# 不指定 metric_name，返回各 namespace 下所有指标
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "lb_public" {
  namespace = "QCE/LB_PUBLIC"
}

data "tencentcloud_monitor_alarm_basic_metric" "lb_private" {
  namespace = "QCE/LB_PRIVATE"
}

output "lb_public_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.lb_public.metric_set
}

output "lb_private_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.lb_private.metric_set
}
