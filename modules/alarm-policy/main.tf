locals {
  # 过滤出需要创建的 policy
  policies = {
    for k, v in var.policies : k => v if try(v.create, true)
  }
}

# ─── 告警策略（支持多个） ───

resource "tencentcloud_monitor_alarm_policy" "this" {
  for_each = local.policies

  policy_name   = try(each.value.policy_name, each.key)
  monitor_type  = try(each.value.monitor_type, "MT_QCE")
  namespace     = each.value.namespace
  remark        = try(each.value.remark, null)
  enable        = try(each.value.enable, 1)
  project_id    = try(each.value.project_id, -1)

  dynamic "conditions" {
    for_each = try(each.value.conditions, [])
    content {
      is_union_rule = try(conditions.value.is_union_rule, 0)
      dynamic "rules" {
        for_each = try(conditions.value.rules, [])
        content {
          metric_name       = rules.value.metric_name
          period            = rules.value.period
          operator          = rules.value.operator
          value             = rules.value.value
          continue_period   = try(rules.value.continue_period, null)
          notice_frequency = try(rules.value.notice_frequency, null)
          is_power_notice   = try(rules.value.is_power_notice, null)

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
    for_each = try(each.value.event_conditions, [])
    content {
      metric_name = event_conditions.value.metric_name
    }
  }

  # notice_ids 可以直接传 ID 列表，也可以传 notice 的 logical name 列表通过 notice_ids_map 自动解析
  notice_ids = try(
    each.value.notice_ids,
    [for nk in try(each.value.notice_keys, []) : lookup(var.notice_ids_map, nk, nk)]
  )

  dynamic "trigger_tasks" {
    for_each = try(each.value.trigger_tasks, [])
    content {
      type        = trigger_tasks.value.type
      task_config = trigger_tasks.value.task_config
    }
  }

  dynamic "policy_tag" {
    for_each = try(each.value.policy_tag, [])
    content {
      key   = policy_tag.value.key
      value = policy_tag.value.value
    }
  }

  group_by = try(each.value.group_by, [])

  dynamic "filter" {
    for_each = try(each.value.filter, [])
    content {
      type       = filter.value.type
      dimensions  = try(filter.value.dimensions, null)
    }
  }

  dynamic "hierarchical_notices" {
    for_each = try(each.value.hierarchical_notices, [])
    content {
      notice_id       = hierarchical_notices.value.notice_id
      classification  = try(hierarchical_notices.value.classification, null)
    }
  }
}
