# ─── 查询所有监控类型 ───

data "tencentcloud_monitor_alarm_monitor_type" "all" {}

output "monitor_types" {
  value = data.tencentcloud_monitor_alarm_monitor_type.all.monitor_types
}

# ─── 查询所有命名空间 ───

data "tencentcloud_monitor_alarm_all_namespaces" "all" {
  module     = "monitor"
  scene_type = "ST_ALARM"
}

output "namespaces" {
  value = data.tencentcloud_monitor_alarm_all_namespaces.all.qce_namespaces_new
}
