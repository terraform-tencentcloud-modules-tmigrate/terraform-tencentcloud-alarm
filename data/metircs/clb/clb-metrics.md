# CLB 公网基础监控指标清单

> 来源：`data.tencentcloud_monitor_alarm_basic_metric`（namespace=`QCE/LB_PUBLIC`），共 88 个指标。

| Metric Name | 中文名 | 单位 | 维度 | 支持周期(秒) | 说明 |
|---|---|---|---|---|---|
| `AccOuttraffic` | 外网出流量 | MB | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 10,60,300,3600,86400 | 外网出流量 |
| `ClbHttp2xx` | 负载均衡返回的2xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 负载均衡返回的2xx状态码 |
| `ClbHttp3xx` | 负载均衡返回的3xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的3xx状态码 |
| `ClbHttp404` | 负载均衡返回的404状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的404状态码 |
| `ClbHttp499` | 负载均衡返回的499状态码 | Count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的499状态码 |
| `ClbHttp4xx` | 负载均衡返回的4xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的4xx状态码 |
| `ClbHttp502` | 负载均衡返回的502状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的502状态码 |
| `ClbHttp503` | 负载均衡返回的503状态码 | Count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的503状态码 |
| `ClbHttp504` | 负载均衡返回的504状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的504状态码 |
| `ClbHttp5xx` | 负载均衡返回的5xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 负载均衡返回的5xx状态码 |
| `ClbOther` | 其它状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 其它状态码 |
| `Clienttlsnegotiationerror` | 客户端TLS握手失败数 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 每分钟内客户端TLS握手失败数 |
| `ClientAccIntraffic` | 入流量 | MB | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的入流量 |
| `ClientAccOuttraffic` | 出流量 | MiBytes | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的出流量 |
| `ClientConcurConn` | 并发连接数 | Count | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的并发连接数 |
| `ClientConnum` | 活跃连接数 | Count | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的活跃连接数 |
| `ClientInactiveConn` | 非活跃连接数 | Count | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的非活跃连接数 |
| `ClientInpkg` | 入包量 | Count/s | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的入包量 |
| `ClientIntraffic` | 入带宽 | Mbps | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的入带宽 |
| `ClientNewConn` | 新建连接数 | Count/s | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的新建连接数 |
| `ClientOutpkg` | 出包量 | Count/s | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的出包量 |
| `ClientOuttraffic` | 出带宽 | Mbps | loadBalancerPort,protocol,vip | 10,60,300,3600,86400 | 客户端到LB的出带宽 |
| `ConcurConn` | 并发连接数 | count | loadBalancerId | 60,300,3600 | 客户端到LB的并发连接数 |
| `ConcurConnVipRatio` | 最大连接数利用率 | % | loadBalancerId | 10,60,300,3600 | 客户端到LB的最大连接数利用率 |
| `ConNum` | 公网连接数 | count | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 公网连接数 |
| `Connumlcus` | 并发连接数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过并发连接数性计算的后付费性能容量单位个数 |
| `ConnRatio` | 连接利用率 | % | vip,vpcid | 60,300,3600,86400 | 连接利用率 |
| `Consumedlcus` | 后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 负载均衡实例使用的后付费性能容量单位个数 |
| `DropQps` | 丢弃QPS | Count | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 丢弃请求数 |
| `DropTotalConns` | 丢弃连接数 | count/s | loadBalancerId | 60,300,3600 | 客户端到LB的丢弃连接数 |
| `HealthRsCount` | 健康检查正常RS数 | Count | appid,lb_vpcid,protocol,rsip,vip,vport | 60,300,3600,86400 | 健康检查正常RS数 |
| `Http2xx` | 后端服务器返回的2xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的2xx状态码 |
| `Http3xx` | 后端服务器返回的3xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的3xx状态码 |
| `Http404` | 后端服务器返回的404状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的404状态码 |
| `Http499` | 后端服务器返回的499状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的499状态码 |
| `Http4xx` | 后端服务器返回的4xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的4xx状态码 |
| `Http502` | 后端服务器返回的502状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的502状态码 |
| `Http503` | 后端服务器返回的503状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的503状态码 |
| `Http504` | 后端服务器返回的504状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的504状态码 |
| `Http5xx` | 后端服务器返回的5xx状态码 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 后端服务器返回的5xx状态码 |
| `InPkg` | 公网入包量 | count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 10,60,300,3600,86400 | 入包量 |
| `InTraffic` | intraffic | Mbps | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 10,60,300,3600,86400 | 公网入带宽 |
| `IntrafficVipRatio` | 入带宽利用率 | % | loadBalancerId | 60,300,3600 | 客户端到LB的入带宽利用率 |
| `InDropBits` | 丢弃入带宽 | Bits | loadBalancerId | 60,300,3600 | 客户端到LB的丢弃入带宽 |
| `InDropPkts` | 丢弃流入数据包 | count/s | loadBalancerId | 60,300,3600 | 客户端到LB的丢弃流入数据包 |
| `Newconnlcus` | 新建连接数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过新建连接数计算的后付费性能容量单位个数 |
| `NewActiveConn` | 新建活跃连接数 | count/s | loadBalancerId | 60,300,3600 | 客户端到LB的新建活跃连接数 |
| `NewConn` | 公网新建连接数 | count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 新增连接数 |
| `NewConnVipRatio` | 新建连接数利用率 | % | loadBalancerId | 10,60,300,3600 | 客户端到LB的新建连接数利用率 |
| `OutPkg` | 公网出包量 | count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 10,60,300,3600,86400 | 公网出包量 |
| `OutTraffic` | outtraffic | Mbps | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 10,60,300,3600,86400 | 公网出带宽 |
| `OuttrafficVipRatio` | 出带宽利用率 | % | loadBalancerId | 60,300,3600 | 客户端到LB的出带宽利用率 |
| `OutDropBits` | 丢弃出带宽 | Mbps | loadBalancerId | 60,300,3600 | 客户端到LB的丢弃出带宽 |
| `OutDropPkts` | 客户端到LB的丢弃流出数据包 | count/s | loadBalancerId | 60,300,3600 | 客户端到LB的丢弃流出数据包 |
| `OverloadCurConn` | 并发连接数 | Count | vip,vpcid | 60,300,3600,86400 | 并发连接数 |
| `Processedtrafficlcus` | 已处理流量后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过已处理流量计算的后付费性能容量单位个数 |
| `QpsVipRatio` | QPS利用率 | % | appid,vip | 60,300,3600 | QPS利用率 |
| `ReqAvg` | 平均请求时间 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 平均请求时间 |
| `ReqMax` | 请求最大时延 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 请求最大时延 |
| `ReqMin` | 请求最小时延 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 请求最小时延 |
| `RspAvg` | 平均响应时间 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 平均响应时间 |
| `RspMax` | 最大响应时间 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 最大响应时间 |
| `RspMin` | 最小响应时间 | ms | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 最小响应时间 |
| `RspTimeout` | 响应超时个数 | count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 响应超时个数 |
| `Ruleevaluationslcus` | 规则评估数后付费LCU数量 | Count | AppId,loadBalancerId | 300,3600,86400 | 通过规则评估数计算的后付费性能容量单位个数 |
| `SnatFail` | 连接失败数 | Count | vip,vpcid | 60,300,3600,86400 | 连接失败数 |
| `SuccReq` | 每分钟成功请求数 | Count/min | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 每分钟成功请求数 |
| `TotalReq` | 每秒请求数 | Count | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600,86400 | 接收请求数 |
| `UnhealthRsCount` | 健康检查异常RS数 | Count | appid,lb_vpcid,protocol,rsip,vip,vport | 60,300,3600 | 健康检查异常RS数 |
| `VClbHttp3xx` | clb返回的3xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的3xx状态码 |
| `VClbHttp404` | clb返回的404状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的404状态码 |
| `VClbHttp499` | clb返回的499状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的499状态码 |
| `VClbHttp4xx` | clb返回的4xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的4xx状态码 |
| `VClbHttp502` | clb返回的502状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的502状态码 |
| `VClbHttp503` | clb返回的503状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的503状态码 |
| `VClbHttp504` | clb返回的504状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的504状态码 |
| `VClbHttp5xx` | clb返回的5xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | clb返回的5xx状态码 |
| `VHttp2xx` | 2xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 2xx 状态码 |
| `VHttp3xx` | 3xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 3xx状态码 |
| `VHttp404` | 404状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 404状态码 |
| `VHttp499` | 499状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 499状态码 |
| `VHttp4xx` | 4xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 4xx状态码 |
| `VHttp502` | 502状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 502状态码 |
| `VHttp503` | 503状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 503状态码 |
| `VHttp504` | 504状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 504状态码 |
| `VHttp5xx` | 5xx状态码 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 5xx状态码 |
| `VRspTimeout` | 响应超时个数 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 响应超时个数 |
| `VSuccReq` | 每秒成功请求数 | Count/s | lanIp,loadBalancerPort,port,protocol,vip,vpcId | 60,300,3600 | 每秒成功请求数 |

## 维度分布
- `lanIp,loadBalancerPort,port,protocol,vip,vpcId`: 56 个指标
- `loadBalancerId`: 11 个指标
- `loadBalancerPort,protocol,vip`: 10 个指标
- `AppId,loadBalancerId`: 5 个指标
- `vip,vpcid`: 3 个指标
- `appid,lb_vpcid,protocol,rsip,vip,vport`: 2 个指标
- `appid,vip`: 1 个指标
