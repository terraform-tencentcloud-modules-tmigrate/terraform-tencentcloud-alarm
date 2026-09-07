# ─── 绑定实例到告警策略（单体） ───
# 一个模块实例只管一个 policy 的绑定：创建 1 个（或 0 个）binding resource，
# 所有实例放进同一个 dimensions 集合。
# 增/删实例 = dimensions 集合变化（ForceNew）= 先解绑全部再按新集合重新绑定。
#
# 注意：
# 1. 绝不能按实例拆成多个 binding resource —— 该 resource 的 id 就是 policy_id，
#    且 provider Delete 调用的是 UnBindingAllPolicyObject（解绑该 policy 的全部对象），
#    删除任何一个实例的 resource 都会把云端全部绑定清空。
# 2. 建议每个 binding_objects 元素显式传 region（如 "ap-jakarta"）。
#    不传时 Create 后 provider 回读的 state 里 region 会被填充为当前 region，
#    与配置（null）的 Set hash 不一致，会导致每次 plan 都想重建 binding resource。
# 3. policy_id 由调用方解析（创建的 policy 用 module 输出，已有 policy 直接传 ID）。

resource "tencentcloud_monitor_policy_binding_object" "this" {
  count = length(var.binding_objects) > 0 ? 1 : 0

  policy_id = var.policy_id

  dynamic "dimensions" {
    for_each = var.binding_objects
    content {
      dimensions_json = dimensions.value.dimensions_json
      region          = try(dimensions.value.region, null)
    }
  }
}
