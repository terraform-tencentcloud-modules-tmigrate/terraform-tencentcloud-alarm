output "notice_ids" {
  value       = { for k, v in tencentcloud_monitor_alarm_notice.this : k => v.id }
  description = "Map of notice IDs keyed by logical name."
}

output "notice_names" {
  value       = { for k, v in tencentcloud_monitor_alarm_notice.this : k => v.name }
  description = "Map of notice names keyed by logical name."
}

output "user_uids" {
  value       = local.user_uids
  description = "Map of CAM user name → UID."
}
