output "binding_object_id" {
  value       = length(var.binding_objects) > 0 ? tencentcloud_monitor_policy_binding_object.this[0].id : null
  description = "Binding object resource ID (equals policy_id). Null when binding_objects is empty."
}
