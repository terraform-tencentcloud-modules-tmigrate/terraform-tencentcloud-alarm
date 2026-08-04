# ─── CVM 磁盘利用率 > 80% 告警策略（带通知模板） ───
# 1. 创建告警通知模板（发给指定 CAM 用户）
# 2. 创建告警策略，绑定通知模板

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

# 查询当前账号信息（获取主账号 OwnerUin）
data "tencentcloud_user_info" "current" {}

locals {
  instance_ids = {
    "cvm-001" = "ins-i8au03jb", # 替换为实际 instance id
    "cvm-002" = "ins-98a9a1yf",
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
      name            = "cvm-ops-notice"
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
          user_ids      = ["200000408606"]
          weekday       = [1, 2, 3, 4, 5, 6, 7]
          group_id       = null
        }
      ]
    }
  }
}

# ─── 2. 告警策略：CVM 磁盘利用率 > 80% ───

module "alarm_policy" {
  source = "../../modules/alarm-policy"

  # 把 notice 模板的 ID 映射传进来，policy 里用 notice_keys 引用
  notice_ids_map = module.alarm_notice.notice_ids

  policies = {
    cvm-disk-usage = {
      policy_name  = "cvm-disk-usage-gt-80"
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

      # 绑定 CVM 实例到告警策略
      # dimensions_json 是 JSON 字符串，CVM 用 {"unInstanceId":"ins-xxx"}
      binding_objects = [
        for k, v in local.instance_ids : {
          dimensions_json = jsonencode({ unInstanceId = v })
          region           = "ap-jakarta"
        }
      ]
    }
  }
}

output "policy_id" {
  value = module.alarm_policy.policy_ids["cvm-disk-usage"]
}

output "policy_name" {
  value = module.alarm_policy.policy_names["cvm-disk-usage"]
}

output "notice_id" {
  value = module.alarm_notice.notice_ids["ops"]
}
