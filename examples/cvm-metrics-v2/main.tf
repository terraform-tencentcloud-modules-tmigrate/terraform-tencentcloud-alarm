# ─── CVM 磁盘利用率 > 80% 告警策略（带通知模板） ───
# 1. 创建告警通知模板（发给指定 CAM 用户）
# 2. 创建告警策略（alarm-policy-v2，单体模块，调用方 for_each 展开）
# 3. 绑定实例到策略（alarm-policy-binding，单体模块，传 policy_id）

terraform {
  required_providers {
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = ">= 1.81.43"
    }
  }
}

provider "tencentcloud" {
  region = "ap-shanghai"
}

# 查询当前账号信息（获取主账号 OwnerUin，调试用）
data "tencentcloud_user_info" "current" {}

locals {
  instance_ids = {
    "cvm-001" = "ins-i8au03jb" # 替换为实际 instance id
    "cvm-002" = "ins-98a9a1yf"
    # "cvm-003" = "ins-9raf9yqp",
  }

  # ─── policy 定义（map，module for_each 展开，每个 value = 一个 policy） ───
  # 模式说明：
  #   不传 policy_id → 模块创建 policy（下面的 cvm-disk-usage）
  #   传 policy_id   → 模块不创建 policy，policy_id 透传到输出（见 reuse-existing 示例）
  policies = {
    cvm-disk-usage = {
      policy_name  = "cvm-disk-usage-gt-80-v2"
      namespace    = "cvm_device"
      monitor_type = "MT_QCE"
      project_id   = 0
      remark       = "CVM 磁盘利用率超过 80% 告警"

      conditions = [
        {
          is_union_rule = 0
          rules = [
            {
              metric_name      = "CvmDiskUsage"
              period           = 60
              operator         = "ge"
              value            = "80"
              continue_period  = 1
              notice_frequency = 3600
            }
          ]
        }
      ]

      # 引用通知模板（通过 notice_keys 自动解析 ID）
      notice_keys = ["ops"]

      # 绑定的实例（由 alarm-policy-binding 模块消费）
      # dimensions_json 是 JSON 字符串，CVM 用 {"unInstanceId":"ins-xxx"}
      # 建议显式传 region：不传会导致回读 hash 不一致、每次 plan 都想重建 binding
      binding_objects = [
        for k, v in local.instance_ids : {
          dimensions_json = jsonencode({ unInstanceId = v })
          region          = "ap-jakarta"
        }
      ]
    }

    # 复用已有策略示例：不创建 policy，只把实例绑到已有策略上
    # reuse-existing = {
    #   policy_id = "policy-xxxxxxxx"
    #   binding_objects = [
    #     for k, v in local.instance_ids : {
    #       dimensions_json = jsonencode({ unInstanceId = v })
    #       region          = "ap-jakarta"
    #     }
    #   ]
    # }
  }

  # 有绑定对象的条目才实例化 binding 模块
  policies_with_bindings = {
    for k, p in local.policies : k => p if length(try(p.binding_objects, [])) > 0
  }
}

# ─── 1. 告警通知模板 ───
# receiver_type = USER：发给 CAM 子用户
# 要发给主账号：创建一个子用户，手机号/邮箱填主账号的联系方式，
# 然后把这里的 user_ids 换成那个子用户的 UID
# 或者用 receiver_type = GROUP，传用户组 ID

module "alarm_notice" {
  source = "../../modules/alarm-notice"

  notices = {
    ops = {
      name            = "cvm-ops-notice-v2"
      notice_type     = "ALL"
      notice_language = "zh-CN"

      user_notices = [
        {
          receiver_type = "USER"
          start_time    = 0
          end_time      = 86399
          notice_way    = ["SMS", "EMAIL"]
          # 主账号在告警系统(AMP)里有专用 consumer ID（不是 OwnerUin）
          # 控制台选「主账号」时自动填的就是这个 ID，会在告警列表显示账号别名
          # 子用户用 users = ["username"]，module 内部用 data.tencentcloud_cam_users 查 UID
          user_ids = ["200000408606"]
          weekday  = [1, 2, 3, 4, 5, 6, 7]
          group_id = null
        }
      ]
    }
  }
}

# ─── 2. 告警策略（单体模块，只创建 policy，不绑定） ───

module "alarm_policy" {
  for_each = local.policies

  source = "../../modules/alarm-policy-v2"

  # 单个 policy object（不再是 map）
  policy = each.value

  # 把 notice 模板的 ID 映射传进来，policy 里用 notice_keys 引用
  notice_ids_map = module.alarm_notice.notice_ids
}

# ─── 3. 绑定实例到策略（单体模块，传 policy_id） ───
# policy_id 统一从 alarm_policy 模块输出解析：
#   创建的 policy → resource id；复用的 → 传入的 policy_id 透传

module "alarm_binding" {
  for_each = local.policies_with_bindings

  source = "../../modules/alarm-policy-binding"

  policy_id = module.alarm_policy[each.key].policy_id

  binding_objects = each.value.binding_objects
}

output "policy_ids" {
  value = { for k, m in module.alarm_policy : k => m.policy_id }
}

output "policy_names" {
  value = { for k, m in module.alarm_policy : k => m.policy_name }
}

output "notice_id" {
  value = module.alarm_notice.notice_ids["ops"]
}
