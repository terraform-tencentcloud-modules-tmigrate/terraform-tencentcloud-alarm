# ─── 查询 CAM 用户列表（用于用户名→UID 映射） ───

data "tencentcloud_cam_users" "all" {}

locals {
  # 用户名 → UID 映射，user_notices 里可以用用户名代替数字 UID
  user_uids = {
    for user in data.tencentcloud_cam_users.all.user_list : user.name => user.uid
  }

  # 过滤出需要创建的 notice
  notices = {
    for k, v in var.notices : k => v if try(v.create, true)
  }
}

# ─── 告警通知模板（支持多个） ───

resource "tencentcloud_monitor_alarm_notice" "this" {
  for_each = local.notices

  name            = each.value.name
  notice_type     = try(each.value.notice_type, "ALL")
  notice_language = try(each.value.notice_language, "zh-CN")

  dynamic "user_notices" {
    for_each = try(each.value.user_notices, [])
    content {
      receiver_type            = user_notices.value.receiver_type
      start_time               = user_notices.value.start_time
      end_time                 = user_notices.value.end_time
      notice_way               = try(user_notices.value.notice_way, null)
      user_ids                 = try(user_notices.value.user_ids, null) != null ? user_notices.value.user_ids : try([for user in user_notices.value.users : local.user_uids[user]], null)
      group_ids                = try(user_notices.value.group_ids, null)
      phone_order              = try(user_notices.value.phone_order, null)
      phone_circle_times       = try(user_notices.value.phone_circle_times, null)
      phone_inner_interval     = try(user_notices.value.phone_inner_interval, null)
      phone_circle_interval    = try(user_notices.value.phone_circle_interval, null)
      need_phone_arrive_notice = try(user_notices.value.need_phone_arrive_notice, null)
      phone_call_type          = try(user_notices.value.phone_call_type, null)
      weekday                  = try(user_notices.value.weekday, [1, 2, 3, 4, 5, 6, 7])
    }
  }

  dynamic "url_notices" {
    for_each = try(each.value.url_notices, [])
    content {
      url               = url_notices.value.url
      is_valid          = try(url_notices.value.is_valid, null)
      validation_code   = try(url_notices.value.validation_code, null)
      start_time        = try(url_notices.value.start_time, null)
      end_time          = try(url_notices.value.end_time, null)
      weekday           = try(url_notices.value.weekday, null)
    }
  }

  dynamic "cls_notices" {
    for_each = try(each.value.cls_notices, [])
    content {
      region     = try(cls_notices.value.region, null) != null ? cls_notices.value.region : try(var.cls[cls_notices.value.cls_key].region, null)
      log_set_id = try(cls_notices.value.log_set_id, null) != null ? cls_notices.value.log_set_id : try(var.cls[cls_notices.value.cls_key].logset_id, null)
      topic_id   = try(cls_notices.value.topic_id, null) != null ? cls_notices.value.topic_id : try(var.cls[cls_notices.value.cls_key].topic_id, null)
      enable     = try(cls_notices.value.enable, 1)
    }
  }
}
