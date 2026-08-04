data "tencentcloud_monitor_alarm_notices" "notices" {
    name = "Preset Notification Template"
}

output "notices" {
    value = data.tencentcloud_monitor_alarm_notices.notices
}