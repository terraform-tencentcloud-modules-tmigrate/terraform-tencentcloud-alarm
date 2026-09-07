output "policy_ids" {
  value       = { for k, v in tencentcloud_monitor_alarm_policy.this : k => v.id }
  description = "Map of policy IDs keyed by logical name."
}

output "policy_names" {
  value       = { for k, v in tencentcloud_monitor_alarm_policy.this : k => v.policy_name }
  description = "Map of policy names keyed by logical name."
}

output "binding_object_ids" {
  value       = { for k, v in tencentcloud_monitor_policy_binding_object.this : k => v.id }
  description = "Map of binding object IDs keyed by policy logical name (one binding resource per policy, id = policy_id)."
}
