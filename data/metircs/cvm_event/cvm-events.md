# CVM 平台事件清单

> 来源：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace cvm_device`（provider 暂无查事件列表的 data source），共 57 个有效事件（已过滤空 EventName / 空描述的脏数据）。
> 原始输出存档：`events.json`。

事件用于 `tencentcloud_monitor_alarm_policy` 的 `event_conditions`，与 `conditions`（指标）可在同一个 policy（MT_QCE）里共存。事件告警无阈值，只需 `metric_name`（事件名）：

```hcl
event_conditions {
  metric_name = "ping_unreachable"
}
```

## 一、基础平台事件（无前缀，11 个）

| EventName | 描述 |
|---|---|
| `disk_readonly` | 磁盘只读 |
| `guest_core_error` | 内核故障 |
| `guest_oom` | 内存oom |
| `ping_unreachable` | ping不可达 |
| `guest_reboot` | 机器重启 |
| `cvm_packet_droped_by_qos_wan_out_bandwidth` | 外网出带宽超限导致丢包 |
| `cvm_packet_droped_by_qos_connection_session` | 连接数超限导致丢包 |
| `nvme_error` | 子机nvme设备error |
| `instance_restarting` | 实例计划重启（宿主机系统维护） |
| `instance_restarted` | 实例已重启（宿主机系统错误） |
| `nfct_table_full` | 连接跟踪表满 |

## 二、异常/故障事件（`cvm:ErrorEvent:` 前缀，41 个）

实例生命周期与健康状态类：

| EventName | 描述 |
|---|---|
| `cvm:ErrorEvent:InstanceRestarting` | 实例计划重启（宿主机系统维护） |
| `cvm:ErrorEvent:InstanceRestarted` | 实例已重启（宿主机系统错误） |
| `cvm:ErrorEvent:GuestReboot` | 机器重启 |
| `cvm:ErrorEvent:GuestCoreError` | 内核故障 |
| `cvm:ErrorEvent:GuestOom` | 内存oom |
| `cvm:ErrorEvent:DiskReadonly` | 磁盘只读 |
| `cvm:ErrorEvent:NvmeError` | 子机nvme设备error |
| `cvm:ErrorEvent:NfctTableFull` | 连接跟踪表满 |
| `cvm:ErrorEvent:PingUnreachable` | ping不可达 |
| `cvm:ErrorEvent:CvmPacketDropedByQosWanOutBandwidth` | 外网出带宽超限导致丢包 |
| `cvm:ErrorEvent:CvmPacketDropedByQosConnectionSession` | 连接数超限导致丢包 |

实例运行隐患 / 异常（Avoided 避免 / Executing 处理中 / Executed 已完成 / Inquiring 待授权 / Canceled 取消，5 个状态 × 4 类）：

| EventName | 描述 |
|---|---|
| `cvm:ErrorEvent:InstanceRunningRisksAvoided` | 实例运行隐患避免 |
| `cvm:ErrorEvent:InstanceRunningRisksExecuting` | 实例运行隐患处理中 |
| `cvm:ErrorEvent:InstanceRunningRisksExecuted` | 实例运行隐患已完成 |
| `cvm:ErrorEvent:InstanceRunningRisksInquiring` | 实例运行隐患待授权 |
| `cvm:ErrorEvent:InstanceRunningRisksCanceled` | 实例运行隐患取消 |
| `cvm:ErrorEvent:InstanceRunningAbnormallyAvoided` | 实例运行异常避免 |
| `cvm:ErrorEvent:InstanceRunningAbnormallyExecuting` | 实例运行异常处理中 |
| `cvm:ErrorEvent:InstanceRunningAbnormallyExecuted` | 实例运行异常已完成 |
| `cvm:ErrorEvent:InstanceRunningAbnormallyInquiring` | 实例运行异常待授权 |
| `cvm:ErrorEvent:InstanceRunningAbnormallyCanceled` | 实例运行异常取消 |
| `cvm:ErrorEvent:InstanceDiskErrorAvoided` | 实例硬盘异常避免 |
| `cvm:ErrorEvent:InstanceDiskErrorExecuting` | 实例硬盘异常处理中 |
| `cvm:ErrorEvent:InstanceDiskErrorExecuted` | 实例硬盘异常已完成 |
| `cvm:ErrorEvent:InstanceDiskErrorInquiring` | 实例硬盘异常待授权 |
| `cvm:ErrorEvent:InstanceDiskErrorCanceled` | 实例硬盘异常取消 |
| `cvm:ErrorEvent:InstanceNetworkErrorAvoided` | 实例网络连接异常避免 |
| `cvm:ErrorEvent:InstanceNetworkErrorExecuting` | 实例网络连接异常处理中 |
| `cvm:ErrorEvent:InstanceNetworkErrorExecuted` | 实例网络连接异常已完成 |
| `cvm:ErrorEvent:InstanceNetworkErrorInquiring` | 实例网络连接异常待授权 |
| `cvm:ErrorEvent:InstanceNetworkErrorCanceled` | 实例网络连接异常取消 |
| `cvm:ErrorEvent:InstanceNetworkJitterExecuting` | 实例网络抖动处理中 |
| `cvm:ErrorEvent:InstanceNetworkJitterExecuted` | 实例网络抖动已完成 |

子机配置异常类：

| EventName | 描述 |
|---|---|
| `cvm:ErrorEvent:ErrorCfgFstab` | 子机fstab配置异常 |
| `cvm:ErrorEvent:ErrorCfgDNS` | 子机dns配置异常 |
| `cvm:ErrorEvent:RDMASwitchAbnormal` | 实例的RDMA交换机异常 |

变更执行类：

| EventName | 描述 |
|---|---|
| `cvm:ErrorEvent:ExecStart` | 云服务器变更执行开始事件 |
| `cvm:ErrorEvent:ExecEnd` | 云服务器变更执行结束事件 |
| `cvm:ErrorEvent:RollbackStart` | 云服务器变更回滚开始事件 |
| `cvm:ErrorEvent:RollbackEnd` | 云服务器变更回滚结束事件 |
| `cvm:ErrorEvent:ReleaseSuccess` | 云服务器变更发布成功 |

## 三、云审计操作事件（`cvm:CloudEvent:` 前缀，3 个）

| EventName | 描述 |
|---|---|
| `cvm:CloudEvent:ApiCall` | 云API操作事件（基于云审计投递） |
| `cvm:CloudEvent:ConsoleCall` | 控制台操作事件（基于云审计投递） |
| `cvm:CloudEvent:MiniProgramCall` | 小程序操作事件（基于云审计投递） |

## 四、开关机操作事件（`cvm:OperationEvent:` 前缀，2 个）

| EventName | 描述 |
|---|---|
| `cvm:OperationEvent:InstancePowerOff` | 云服务器关机事件 |
| `cvm:OperationEvent:InstancePowerOn` | 云服务器开机事件 |

---

## 备注

1. **刷新方式**：`tccli monitor DescribeAlarmEvents --Module monitor --Namespace cvm_device > events.json`，Namespace 用 view key（`cvm_device`），不是 `QCE/CVM`。
2. **同类事件两套命名**：基础平台事件（如 `ping_unreachable`）和 `cvm:ErrorEvent:` 前缀事件（如 `cvm:ErrorEvent:PingUnreachable`）是两套体系，内容有重叠（新事件体系带前缀、粒度更细）。控制台默认告警策略里 `event_conditions` 常用的是无前缀的基础事件。
3. **事件列表里的脏数据**：API 返回中存在 EventName 或 Description 为空的条目（以及 `cvm:ErrorEvent:CvmPacketDropedByQ` 这种被截断的条目），本文档已过滤。
