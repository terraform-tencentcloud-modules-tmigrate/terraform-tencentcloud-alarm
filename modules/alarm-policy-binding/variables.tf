variable "policy_id" {
  type        = string
  description = "Target alarm policy ID. Use the output of alarm-policy-v2 module for created policies, or an existing policy ID directly."
}

variable "binding_objects" {
  type        = any
  default     = []
  description = "List of objects to bind to the policy. Each element: { dimensions_json (required, JSON string like '{\"unInstanceId\":\"ins-xxx\"}'), region (optional but recommended, e.g. \"ap-jakarta\") }. Empty list = no binding resource created."
}
