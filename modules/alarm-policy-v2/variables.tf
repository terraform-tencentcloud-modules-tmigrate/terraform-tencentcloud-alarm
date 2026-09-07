variable "policy" {
  type        = any
  default     = {}
  description = "Single alarm policy configuration. Fields: policy_name, namespace, monitor_type (default MT_QCE), remark, enable (default 1), project_id (default -1), conditions, event_conditions, notice_ids/notice_keys, trigger_tasks, policy_tag, group_by, filter, hierarchical_notices, create (default true; set false to skip), policy_id (existing policy ID to reuse — when set, no policy is created and policy_id is passed through to the output). For multiple policies, use module for_each at the caller side. Instance binding is handled by the alarm-policy-binding module."
}

variable "notice_ids_map" {
  type        = map(string)
  default     = {}
  description = "Map of notice logical name → notice ID. Used by policy.notice_keys to resolve notice IDs automatically. Typically: module.alarm_notice.notice_ids"
}
