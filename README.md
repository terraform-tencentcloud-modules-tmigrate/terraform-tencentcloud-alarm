# Terraform TencentCloud Alarm Modules

Tencent Cloud Monitor Alarm Terraform modules.

## Modules

| Module | Description |
|--------|-------------|
| `alarm-policy` | Create and manage alarm policies (trigger conditions, notification bindings) |
| `alarm-notice` | Create and manage alarm notification templates (users, groups, URL callbacks) |

## Resources

- `tencentcloud_monitor_alarm_policy` — Alarm policy with rules and conditions
- `tencentcloud_monitor_alarm_notice` — Alarm notification template
- `tencentcloud_monitor_alarm_policy_set_default` — Set default alarm policy

## Data Sources

- `tencentcloud_monitor_alarm_basic_alarms` — Query historical alarm records
- `tencentcloud_monitor_alarm_history` — Query alarm history
- `tencentcloud_monitor_alarm_policy` — Query alarm policy details
- `tencentcloud_monitor_alarm_notices` — Query alarm notification templates
- `tencentcloud_monitor_alarm_all_namespaces` — Query all alarm namespaces
- `tencentcloud_monitor_alarm_conditions_template` — Query alarm condition templates
- `tencentcloud_monitor_alarm_metric` — Query alarm metrics
- `tencentcloud_monitor_alarm_basic_metric` — Query basic alarm metrics
- `tencentcloud_monitor_alarm_monitor_type` — Query monitor types
- `tencentcloud_monitor_alarm_notice_callbacks` — Query alarm notice callbacks
