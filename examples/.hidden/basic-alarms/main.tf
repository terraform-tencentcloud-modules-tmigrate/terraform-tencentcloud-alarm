terraform {
  required_version = ">= 1.5.0"

  required_providers {
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = ">= 1.81.155"
    }
  }
}

provider "tencentcloud" {
  region = "ap-shanghai"
}

# ─── 查询历史告警列表 ───
# module: 固定值 "monitor"
# start_time / end_time: Unix 时间戳（秒），可选，默认查最近一天
# project_ids: 按项目 ID 过滤
# view_names: 按策略类型过滤，如 ["cvm_device"]
# alarm_status: 按告警状态过滤，0=未恢复 1=已恢复 2/3/5=数据不足 4=已过期
# obj_like: 按告警对象模糊匹配
# metric_names: 按指标名过滤
# instance_group_ids: 按实例组 ID 过滤
# occur_time_order: 按发生时间排序 ASC/DESC

data "tencentcloud_monitor_alarm_basic_alarms" "recent" {
  module = "monitor"

  # 查询最近 24 小时
  start_time = tonumber(formatdate("YYYYMMDDhhmmss", timestamp()))
  end_time   = tonumber(formatdate("YYYYMMDDhhmmss", timestamp()))

  occur_time_order = "DESC"

  # 可选过滤条件
  # project_ids  = [0]
  # view_names    = ["cvm_device"]
  # alarm_status  = [1]
  # obj_like      = "ins-"
  # metric_names  = ["CpuUsage"]
}

output "alarms" {
  value = data.tencentcloud_monitor_alarm_basic_alarms.recent.alarms
}

output "warning" {
  value = data.tencentcloud_monitor_alarm_basic_alarms.recent.warning
}
