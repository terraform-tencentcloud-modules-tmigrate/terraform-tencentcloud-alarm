locals {
  # 过滤出需要创建的 policy
  policies = {
    for k, v in var.policies : k => v if try(v.create, true)
  }
}

# ─── 告警策略（支持多个） ───

resource "tencentcloud_monitor_alarm_policy" "this" {
  for_each = local.policies

  policy_name  = try(each.value.policy_name, each.key)
  monitor_type = try(each.value.monitor_type, "MT_QCE")
  namespace    = each.value.namespace
  remark       = try(each.value.remark, null)
  enable       = try(each.value.enable, 1)
  project_id   = try(each.value.project_id, -1)

  dynamic "conditions" {
    for_each = try(each.value.conditions, [])
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
      dimensions = try(filter.value.dimensions, null)
    }
  }

  dynamic "hierarchical_notices" {
    for_each = try(each.value.hierarchical_notices, [])
    content {
      notice_id      = hierarchical_notices.value.notice_id
      classification = try(hierarchical_notices.value.classification, null)
    }
  }
}

# ─── 绑定实例到告警策略 ───
# 与 v1 的区别：
# v1 按实例 for_each 拆成多个 resource —— 但该 resource 的 id 就是 policy_id，
# 且 provider Delete 调用的是 UnBindingAllPolicyObject（解绑该 policy 的全部对象），
# 所以删除任何一个实例的 resource 都会把云端全部绑定清空（其他实例的 resource
# state 还在但云端已空）→ 这就是多实例场景下删一个等于删全部的 bug。
#
# v2：一个 policy 只创建一个 binding resource，所有实例放进同一个 dimensions 集合。
# 增/删实例 = dimensions 集合变化（ForceNew）= 先解绑全部再按新集合重新绑定。
#
# 注意：
# 1. 没有 binding_objects 的 policy 不创建 binding resource
# 2. 建议每个 binding_objects 元素显式传 region（如 "ap-jakarta"）。
#    不传时 Create 后 provider 回读的 state 里 region 会被填充为当前 region，
#    与配置（null）的 Set hash 不一致，会导致每次 plan 都想重建 binding resource。

resource "tencentcloud_monitor_policy_binding_object" "this" {
  for_each = {
    for pk, p in local.policies : pk => p if length(try(p.binding_objects, [])) > 0
  }

  policy_id = tencentcloud_monitor_alarm_policy.this[each.key].id

  dynamic "dimensions" {
    for_each = each.value.binding_objects
    content {
      dimensions_json = dimensions.value.dimensions_json
      region          = try(dimensions.value.region, null)
    }
  }
}
