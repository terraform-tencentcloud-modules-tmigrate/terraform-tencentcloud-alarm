output "policy_id" {
  value       = local.policy_id
  description = "The effective alarm policy ID (created by this module, or the existing policy_id passed in). Feed this into the alarm-policy-binding module."
}

output "policy_name" {
  value       = local.create_policy ? tencentcloud_monitor_alarm_policy.this[0].policy_name : null
  description = "Policy name. Only set when the policy is created by this module (null when reusing an existing policy)."
}
