# ─── 告警策略（单体，纯创建） ───
# 一个模块实例只创建 1 个（或 0 个）policy，不负责绑定实例。
# 绑定用 alarm-policy-binding 模块（传入本模块输出的 policy_id）。
# 需要多个 policy 时在调用方用 module for_each 展开。

locals {
  # 是否创建 policy：create 开启 且 未传 policy_id（传了 policy_id = 复用已有策略，不创建，透传输出）
  create_policy = try(var.policy.create, true) && try(var.policy.policy_id, null) == null

  # 实际生效的 policy ID：创建的用 resource id，复用的用传入值
  policy_id = local.create_policy ? tencentcloud_monitor_alarm_policy.this[0].id : try(var.policy.policy_id, null)
}

resource "tencentcloud_monitor_alarm_policy" "this" {
  count = local.create_policy ? 1 : 0

  policy_name  = try(var.policy.policy_name, "alarm-policy")
  monitor_type = try(var.policy.monitor_type, "MT_QCE")
  namespace    = var.policy.namespace
  remark       = try(var.policy.remark, null)
  enable       = try(var.policy.enable, 1)
  project_id   = try(var.policy.project_id, -1)

  dynamic "conditions" {
    for_each = try(var.policy.conditions, [])
    content {
      is_union_rule = try(conditions.value.is_union_rule, 0)
      dynamic "rules" {
        for_each = try(conditions.value.rules, [])
        content {
          metric_name      = rules.value.metric_name
          period           = rules.value.period
          operator         = rules.value.operator
          value            = rules.value.value
          continue_period  = try(rules.value.continue_period, null)
          notice_frequency = try(rules.value.notice_frequency, null)
          is_power_notice  = try(rules.value.is_power_notice, null)

          dynamic "filter" {
            for_each = try(rules.value.filter, [])
            content {
              type       = filter.value.type
              dimensions = try(filter.value.dimensions, null)
            }
          }
        }
      }
    }
  }

  dynamic "event_conditions" {
    for_each = try(var.policy.event_conditions, [])
    content {
      metric_name = event_conditions.value.metric_name
    }
  }

  # notice_ids 可以直接传 ID 列表，也可以传 notice 的 logical name 列表通过 notice_ids_map 自动解析
  notice_ids = try(
    var.policy.notice_ids,
    [for nk in try(var.policy.notice_keys, []) : lookup(var.notice_ids_map, nk, nk)]
  )

  dynamic "trigger_tasks" {
    for_each = try(var.policy.trigger_tasks, [])
    content {
      type        = trigger_tasks.value.type
      task_config = trigger_tasks.value.task_config
    }
  }

  dynamic "policy_tag" {
    for_each = try(var.policy.policy_tag, [])
    content {
      key   = policy_tag.value.key
      value = policy_tag.value.value
    }
  }

  group_by = try(var.policy.group_by, [])

  dynamic "filter" {
    for_each = try(var.policy.filter, [])
    content {
      type       = filter.value.type
      dimensions = try(filter.value.dimensions, null)
    }
  }

  dynamic "hierarchical_notices" {
    for_each = try(var.policy.hierarchical_notices, [])
    content {
      notice_id      = hierarchical_notices.value.notice_id
      classification = try(hierarchical_notices.value.classification, null)
    }
  }
}
