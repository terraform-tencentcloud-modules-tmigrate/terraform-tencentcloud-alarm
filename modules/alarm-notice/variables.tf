variable "notices" {
  type        = any
  default     = {}
  description = "Map of alarm notices to create. Key = logical name. Each item: name, notice_type (default ALL), notice_language (default zh-CN), user_notices, url_notices, cls_notices, create (default true)."
}

variable "cls" {
  type        = any
  default     = {}
  description = "Map of CLS instances for cls_notices reference. Each item: region, logset_id, topic_id."
}
