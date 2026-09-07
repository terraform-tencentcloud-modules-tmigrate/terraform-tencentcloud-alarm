variable "policies" {
  type        = any
  default     = {}
  description = "Map of alarm policies to create. Key = logical name. Each item: policy_name, namespace, monitor_type (default MT_QCE), remark, enable (default 1), project_id (default -1), conditions, event_conditions, notice_ids/notice_keys, trigger_tasks, policy_tag, group_by, filter, hierarchical_notices, binding_objects (list of {dimensions_json, region}), create (default true)."
}

variable "notice_ids_map" {
  type        = map(string)
  default     = {}
  description = "Map of notice logical name → notice ID. Used by policy.notice_keys to resolve notice IDs automatically. Typically: module.alarm_notice.notice_ids"
}
