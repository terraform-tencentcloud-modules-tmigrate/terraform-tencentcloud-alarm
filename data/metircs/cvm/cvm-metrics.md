# CVM 基础监控指标清单

> 来源：`data.tencentcloud_monitor_alarm_basic_metric`（namespace=`QCE/CVM`），共 82 个指标。

| Metric Name | 中文名 | 单位 | 维度 | 支持周期(秒) | 说明 |
|---|---|---|---|---|---|
| `AccOuttraffic` | 外网网卡的平均每秒出流量 | MBytes | InstanceId | 10,60,300,3600,86400 | 外网网卡的平均每秒出流量 |
| `BaseCpuUsage` | 基础CPU使用率 | % | vm_uuid | 10,60,300,3600,86400 | 基础CPU使用率通过宿主机采集上报，无须安装监控组件即可查看数据，子机高负载情况下仍可持续采集上报数据 |
| `CbsVolumeFsUsage` | 磁盘使用率 | % | diskid | 10,60,300,3600 | 硬盘文件系统使用率 |
| `CnpCount` | CNP统计量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | CNP统计量 |
| `CpuLoadavg` | 1分钟平均负载[子机] |  | vm_uuid | 10,60,300,3600,86400 | 1分钟内CPU平均负载，取 /proc/loadavg 第一列数据（windows操作系统无此指标），依赖监控组件安装采集 |
| `CpuUsage` | CPU利用率 | % | vm_uuid | 10,60,300,3600,86400 | CPU利用率是通过服务器内部监控组件采集上报，数据更加精准 |
| `Cpuloadavg15m` | 15分钟平均负载[子机] | 0 | vm_uuid | 60,300,3600 | 15分钟内CPU平均负载，取 /proc/loadavg 第三列数据（windows操作系统无此指标），依赖监控组件安装采集 |
| `Cpuloadavg5m` | 5分钟平均负载[子机] | 0 | vm_uuid | 60,300,3600 | 5分钟内CPU平均负载，取 /proc/loadavg 第二列数据（windows操作系统无此指标），依赖监控组件安装采集	 |
| `CvmDiskUsage` | 磁盘利用率 | % | vm_uuid | 60,300,3600,86400 | 磁盘利用率 |
| `DcCpuUsage` | CPU使用率[子机] | % | docker_clusterid | 60,300,3600,86400 | 运行期间实时占用的CPU百分比，依赖监控组件安装采集 |
| `DcMemUsage` | 内存使用率[子机] | % | docker_clusterid | 60,300,3600,86400 | 使用的内存占总内存比率，使用的内存不包括系统缓存和缓存区占用内存，依赖监控组件安装采集  |
| `DiskIoAwait` | 磁盘IO等待_子机 | ms | vm_uuid | 60,300,3600,86400 | 磁盘分区I/O平均每次操作的等待时间 |
| `DiskReadIopsUsage` | 磁盘读IOPS使用率 | % | diskId | 10,60,300,3600,86400 | 磁盘读IOPS使用率 |
| `DiskReadTraffic` | 磁盘读流量_子机 | KB/s | vm_uuid | 60,300,3600,86400 | 平均每秒从磁盘读到内存的数据量 |
| `DiskReadTrafficNew` | 磁盘读流量 | KB/s | disk_name,serial,vm_uuid | 10,60,300,3600,86400 | 平均每秒从磁盘读到内存的数据量 |
| `DiskReadTrafficUsage` | 磁盘读流量使用率 | % | diskId | 10,60,300,3600,86400 | 磁盘读流量使用率 |
| `DiskSvctm` | 磁盘分区平均每次I/O操作所花的时间 | ms | disk_name,serial,vm_uuid | 10,60,300,3600,86400 | 磁盘分区平均每次I/O操作所花的时间 |
| `DiskTotal` | 磁盘总量[子机] | M | diskname,unInstanceId | 10,60,300,3600,86400 | 磁盘分区总容量 |
| `DiskUsage` | 磁盘使用率 | % | diskname,unInstanceId | 10,60,300,3600,86400 | 磁盘分区已使用容量和总容量的百分比 |
| `DiskWriteIopsUsage` | 磁盘写IOPS使用率 | % | diskId | 10,60,300,3600,86400 | 磁盘写IOPS使用率 |
| `DiskWriteTraffic` | 磁盘写流量_子机 | KB/s | vm_uuid | 60,300,3600,86400 | 平均每秒从内存写到磁盘的数据量 |
| `DiskWriteTrafficNew` | 磁盘写流量 | KB/s | disk_name,serial,vm_uuid | 10,60,300,3600,86400 | 平均每秒从内存写到磁盘的数据量 |
| `DiskWriteTrafficUsage` | 磁盘写流量使用率 | % | diskId | 10,60,300,3600,86400 | 磁盘写流量使用率 |
| `EcnCount` | ECN统计量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | ECN统计量 |
| `FullVmCpuL3accK` | L3访问次数 | Count | cpu_name,vm_uuid | 60,300,3600 | L3访问次数 |
| `FullVmCpuL3misK` | L3Miss次数 | Count | cpu_name,vm_uuid | 60,300,3600 | L3Miss次数 |
| `FullVmCpuL3oKb` | 占用L3大小 | KBytes | cpu_name,vm_uuid | 60,300,3600 | 占用L3大小 |
| `FullVmCpuLmbMb` | 访问近端内存带宽 | MiBytes/s | cpu_name,vm_uuid | 60,300,3600 | 访问近端内存带宽 |
| `FullVmCpuRmbMb` | 访问远端内存带宽 | MiBytes/s | cpu_name,vm_uuid | 60,300,3600 | 访问远端内存带宽 |
| `GpuDecUtil` | GPU解码器使用率 | % | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU解码器使用率 |
| `GpuEncUtil` | GPU编码器使用率 | % | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU编码器使用率 |
| `GpuMemTotal` | GPU内存总量 | MB | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU内存总量 |
| `GpuMemUsed` | GPU显存使用量 | MB | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU显存使用量 |
| `Gpueccterminateapp` | GPU显存是否发生UCE | None | minorNumber,unInstanceId | 10,60,300,3600 | GPU显存是否发生UCE |
| `Gpumemusage` | GPU显存使用率 | % | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU显存使用率 |
| `Gpupowdraw` | GPU功耗使用量 | 0 | minorNumber,unInstanceId | 10,60,300,3600,86400 |  GPU功耗使用量  |
| `Gpupowlimit` | GPU功耗总量 | 0 | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU功耗总量 |
| `Gpupowusage` | GPU功耗使用率 | % | minorNumber,unInstanceId | 10,60,300,3600,86400 |  GPU功耗使用率  |
| `Gpuretiredpagepending` | GPU是否存在显存页需隔离 | None | minorNumber,unInstanceId | 10,60,300,3600 | GPU是否存在显存页需隔离 |
| `Gputemp` | GPU温度 | 0 | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU温度 |
| `Gpuutil` | GPU使用率 | % | minorNumber,unInstanceId | 10,60,300,3600,86400 | GPU使用率 |
| `LanInpkg` | 内网入包量 | 个/秒 | vm_uuid | 10,60,300,3600,86400 | 内网网卡的平均每秒入包量 |
| `LanIntraffic` | 内网入带宽 | Mbps | vm_uuid | 10,60,300,3600,86400 | 内网网卡的平均每秒入流量 |
| `LanOutpkg` | 内网出包量 | 个/秒 | vm_uuid | 10,60,300,3600,86400 | 内网网卡的平均每秒出包量 |
| `LanOuttraffic` | 内网出带宽 | Mbps | vm_uuid | 10,60,300,3600,86400 | 内网网卡的平均每秒出流量 |
| `MemTotal` | 内存总量 | MB | vm_uuid | 60,300,3600,86400 | 内存总量 |
| `MemTotalUsed` | 用户实际使用内存 | MBytes | vm_uuid | 60,300,3600 | 使用的总内存量，包括系统缓存和缓存区占用内存，依赖监控组件安装采集 |
| `MemUsage` | 内存利用率 | % | vm_uuid | 10,60,300,3600,86400 | 用户实际使用的内存量与总内存量之比，不包括缓冲区与系统缓存占用的内存 |
| `MemUsed` | 内存使用量 | MB | vm_uuid | 10,60,300,3600,86400 | 使用的内存量，不包括系统缓存和缓存区占用内存，依赖监控组件安装采集 |
| `Outratio` | 公网出带宽利用率 | % | InstanceId | 10,60,300,3600 |  |
| `RdmaInpkg` | rdma网卡入包量 | Count/s | vm_uuid | 10,60,300,3600 | rdma网卡的平均每秒入包量 |
| `RdmaInpkt` | RDMA网卡入包量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | RDMA网卡入包量 |
| `RdmaIntraffic` | RDMA网卡接收带宽 | MBit/s | name,unInstanceId | 10,60,300,3600,86400 | RDMA网卡接收带宽 |
| `RdmaOutOfSequence` | 接收方乱序错误量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | 接收方乱序错误量 |
| `RdmaOutpkt` | RDMA网卡出包量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | RDMA网卡出包量 |
| `RdmaOuttraffic` | RDMA网卡发送带宽 | MBit/s | name,unInstanceId | 10,60,300,3600,86400 | RDMA网卡发送带宽 |
| `RdmaPktDiscard` | 端侧丢包量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | 端侧丢包量 |
| `RdmaTimeoutCount` | 发送方超时错误量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | 发送方超时错误量 |
| `RxHpbwAvg` | 毫秒级_RDMA网卡接收平均带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡接收平均带宽 |
| `RxHpbwMax` | 毫秒级_RDMA网卡接收最大带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡接收最大带宽 |
| `RxHpbwMin` | 毫秒级_RDMA网卡接收最小带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡接收最小带宽 |
| `RxHpbwP50` | 毫秒级_RDMA网卡接收带宽P50 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡接收带宽P50 |
| `RxHpbwP90` | 毫秒级_RDMA网卡接收带宽P90 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡接收带宽P90 |
| `RxPfcCount` | RX_PFC统计量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | RX_PFC统计量 |
| `TcpCurrEstab` | 当前TCP连接数 |  | vm_uuid | 10,60,300,3600,86400 | 处于 ESTABLISHED 状态的 TCP 连接数量，依赖监控组件安装采集 |
| `Timeoffset` | 子机utc时间和ntp时间差值 | s | vm_uuid | 60,300,3600 | 子机utc时间和ntp时间差值 |
| `TxHpbwAvg` | 毫秒级_RDMA网卡发送平均带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡发送平均带宽 |
| `TxHpbwMax` | 毫秒级_RDMA网卡发送最大带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡发送最大带宽 |
| `TxHpbwMin` | 毫秒级_RDMA网卡发送最小带宽 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡发送最小带宽 |
| `TxHpbwP50` | 毫秒级_RDMA网卡发送带宽P50 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡发送带宽P50 |
| `TxHpbwP90` | 毫秒级_RDMA网卡发送带宽P90 | Mbps | name,unInstanceId | 10,60,300,3600 | 毫秒级_RDMA网卡发送带宽P90 |
| `TxPfcCount` | TX_PFC统计量 | Count/s | name,unInstanceId | 10,60,300,3600,86400 | TX_PFC统计量 |
| `VmDiskReadIops` | 磁盘读IOPS | count/s | unInstanceId | 60,300,3600 | 磁盘读IOPS |
| `VmDiskTmpio` | 磁盘svctm | ms | unInstanceId | 60,300,3600 | 磁盘 svctm |
| `Vrdmainpkt` | vRDMA网卡入包量 | pps | unInstanceId | 60,300,3600,86400 | vRDMA网卡入包量 |
| `Vrdmaintraffic` | vRDMA网卡接收带宽 | Mbps | unInstanceId | 60,300,3600,86400 | vRDMA网卡接收带宽 |
| `Vrdmaoutpkt` | vRDMA网卡出包量 | pps | unInstanceId | 60,300,3600,86400 | vRDMA网卡出包量 |
| `Vrdmaouttraffic` | vRDMA网卡发送带宽 | Mbps | unInstanceId | 60,300,3600,86400 | vRDMA网卡发送带宽 |
| `WanInpkg` | 公网入包量 | 个/s | InstanceId | 10,60,300,3600,86400 | 外网平均每秒入包量 |
| `WanIntraffic` | intraffic | Mbps | InstanceId | 10,60,300,3600,86400 | 外网平均每秒入流量 |
| `WanOutpkg` | 公网出包量 | 个/s | InstanceId | 10,60,300,3600,86400 | 外网平均每秒出包量 |
| `WanOuttraffic` | outtraffic | Mbps | InstanceId | 10,60,300,3600,86400 | 外网平均每秒出流量，最小粒度数据为10秒总流量/10秒 计算得出 |