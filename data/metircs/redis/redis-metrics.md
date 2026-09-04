# Redis 内存版基础监控指标清单

> 来源：`data.tencentcloud_monitor_alarm_basic_metric`（namespace=`QCE/REDIS_MEM`），共 80 个指标。

| Metric Name | 中文名 | 单位 | 维度 | 支持周期(秒) | 说明 |
|---|---|---|---|---|---|
| `CmdBigValue` | 大Value请求 | Count/s | instanceid | 5,60,300,3600,86400 | 请求命令大小超过32KB的执行次数 |
| `CmdBigValueProxy` | 大Value请求 | Count/s | instanceid,pnodeid | 5,60,300,3600,86400 | 请求命令大小超过32KB的执行次数 |
| `CmdErr` | 执行错误 | Count | instanceid | 5,60,300,3600,86400 | 命令执行错误的次数，例如命令不存在、参数错误等情况 |
| `CmdErrProxy` | Proxy命令执行错误数 | Count/s | instanceid,pnodeid | 5,60,300,3600,86400 | Proxy命令执行错误的次数，例如命令不存在、参数错误等情况 |
| `CmdHits` | 读请求命中 | Count | instanceid | 5,60,300,3600,86400 | 读请求Key存在的个数，对应info命令输出的keyspace_hits指标 |
| `CmdHitsNode` | 读请求命中 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 读请求Key存在的个数，对应info命令输出的keyspace_hits指标 |
| `CmdHitsRatio` | 读请求命中率 | % | instanceid | 5,60,300,3600,86400 | Key命中/(Key命中+KeyMiss)，该指标可以反应Cache Miss的情况 |
| `CmdHitsRatioNode` | 读请求命中率 | % | instanceid,rnodeid | 5,60,300,3600,86400 | Key命中/(Key命中+KeyMiss)，该指标可以反应Cache Miss的情况 |
| `CmdKeyCount` | Key请求数 | Count/s | instanceid | 5,60,300,3600,86400 | 命令访问的Key个数 |
| `CmdKeyCountProxy` | Key请求数 | Count/s | instanceid,pnodeid | 5,60,300,3600,86400 | 命令访问的Key个数 |
| `CmdMget` | Mget请求数 | Count/s | instanceid | 5,60,300,3600,86400 | Mget命令执行次数 |
| `CmdMgetProxy` | Mget请求数 | Count/s | instanceid,pnodeid | 5,60,300,3600,86400 | Mget命令执行次数 |
| `CmdMiss` | 读请求Miss | Count | instanceid | 5,60,300,3600,86400 | 读请求Key不存在的个数，对应info命令输出的keyspace_misses指标 |
| `CmdMissNode` | 读请求Miss | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 读请求Key不存在的个数，对应info命令输出的keyspace_misses指标 |
| `CmdOther` | 其他请求 | Count/s | instanceid | 5,60,300,3600,86400 | 读写命令之外的命令执行次数，其他命令分类，请查看文档监控说明 |
| `CmdOtherNode` | 其他请求 | Count/s | instanceid,rnodeid | 5,60,300,3600,86400 | 读写命令之外的命令执行次数，其他命令分类，请查看文档监控说明 |
| `CmdRead` | 读请求 | Count/s | instanceid | 5,60,300,3600,86400 | 读命令执行次数，读命令分类，请查看文档监控说明 |
| `CmdReadNode` | 读请求 | Count/s | instanceid,rnodeid | 5,60,300,3600,86400 | 读命令执行次数，读命令分类，请查看文档监控说明 |
| `CmdSlow` | 慢查询 | Count | instanceid | 5,60,300,3600,86400 | 执行时延大于slowlog-log-slower-than配置的命令次数 |
| `CmdSlowNode` | 慢查询 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 执行时延大于slowlog-log-slower-than配置的命令次数 |
| `CmdWrite` | 写请求 | Count/s | instanceid | 5,60,300,3600,86400 | 写命令执行次数，读命令分类，请查看文档监控说明 |
| `CmdWriteNode` | 写请求 | Count/s | instanceid,rnodeid | 5,60,300,3600,86400 | 写命令执行次数，读命令分类，请查看文档监控说明 |
| `Commands` | 总请求 | Count/s | instanceid | 5,60,300,3600,86400 | QPS，命令执行次数 |
| `CommandsNode` | 总请求 | Count/s | instanceid,rnodeid | 5,60,300,3600,86400 | QPS，命令执行次数 |
| `CommandsProxy` | 总请求 | Count/s | instanceid,pnodeid | 5,60,300,3600,86400 | Proxy执行的命令数 |
| `Connections` | 连接数量 | Count | instanceid | 5,60,300,3600,86400 | 连接到实例的TCP连接数量 |
| `ConnectionsNode` | 连接数量 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | Proxy连接到节点的连接数 |
| `ConnectionsProxy` | 连接数量 | Count | instanceid,pnodeid | 5,60,300,3600,86400 | 连接到实例的TCP连接数量 |
| `ConnectionsUtil` | 连接使用率 | % | instanceid | 5,60,300,3600,86400 | 实际TCP连接数量和最大连接数比 |
| `ConnectionsUtilNode` | 连接使用率 | % | instanceid,rnodeid | 5,60,300,3600,86400 | 节点连接数使用率 |
| `ConnectionsUtilProxy` | 连接使用率 | % | instanceid,pnodeid | 5,60,300,3600,86400 | 连接数使用率 |
| `CpuMaxUtil` | 节点最大CPU使用率 | % | instanceid | 5,60,300,3600,86400 | 实例中节点（分片或者副本）最大CPU使用率 |
| `CpuUtil` | CPU使用率 | % | instanceid | 5,60,300,3600,86400 | 平均CPU使用率 |
| `CpuUtilNode` | CPU使用率 | % | instanceid,rnodeid | 5,60,300,3600,86400 | 平均CPU使用率 |
| `CpuUtilProxy` | CPU使用率 | % | instanceid,pnodeid | 5,60,300,3600,86400 | Proxy CPU使用率 |
| `DelaySeq` | 延迟序列差 | None | serialids | 5,60,300,3600,86400 | 延迟序列差 |
| `DelayTime` | 最大延迟时间 | ms | serialids | 5,60,300,3600,86400 | 最大延迟时间 |
| `Evicted` | key驱逐数 | Count | instanceid | 5,60,300,3600,86400 | 时间窗内被驱逐的Key个数，对应info命令输出的evicted_keys |
| `EvictedNode` | key驱逐数 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 时间窗内被驱逐的Key个数，对应info命令输出的evicted_keys |
| `Expired` | key过期数 | Count | instanceid | 5,60,300,3600,86400 | 时间窗内被淘汰的Key个数，对应info命令输出的expired_keys |
| `ExpiredNode` | key过期数 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 时间窗内被淘汰的Key个数，对应info命令输出的expired_keys |
| `Expires` | key设置过期时间数 | Count | instanceid | 5,60,300,3600,86400 | 实例设置过期时间的Key数量（一级Key） |
| `GlobalDelayCommand` | 延迟命令数 | Count | groupid,instancerepl | 5,60,300,3600,86400 | 全球复制延迟命令数 |
| `GlobalDelayTime` | 延迟时间 | ms | groupid,instancerepl | 5,60,300,3600,86400 | 全球复制延迟时间 |
| `InBandwidthUtil` | 内网入流量实际使用和最大流量比 | % | instanceid | 5,60,300,3600,86400 | 内网入流量实际使用和最大流量比 |
| `InBandwidthUtilProxy` | 内网入流量实际使用和最大流量比 | % | instanceid,pnodeid | 5,60,300,3600,86400 | 内网入流量实际使用和最大流量比 |
| `InFlow` | 入流量 | MBytes/s | instanceid | 5,60,300,3600,86400 | 内网入流量 |
| `InFlowLimit` | 入流量限流触发 | Count | instanceid | 5,60,300,3600,86400 | 入流量触发限流的次数 |
| `InFlowLimitProxy` | 入流量限流触发 | Count | instanceid,pnodeid | 5,60,300,3600,86400 | 入流量触发限流的次数 |
| `InFlowProxy` | 内网入流量 | MBytes/s | instanceid,pnodeid | 5,60,300,3600,86400 | 内网入流量 |
| `Keys` | Key总个数 | Count | instanceid | 5,60,300,3600,86400 | 实例存储的总Key个数（一级Key） |
| `KeysNode` | Key总个数 | Count | instanceid,rnodeid | 5,60,300,3600,86400 | 实例存储的总Key个数（一级Key） |
| `LatencyAvg` | 平均执行时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延平均值 |
| `LatencyAvgCommand` | 平均执行时延 | ms | command,instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延平均值 |
| `LatencyAvgProxy` | 平均执行时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的执行时延平均值 |
| `LatencyMax` | 最大执行时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延最大值 |
| `LatencyMaxCommand` | 最大执行时延 | ms | command,instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延最大值 |
| `LatencyMaxProxy` | 最大执行时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的执行时延最大值 |
| `LatencyOther` | 其他命令平均时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的读写命令之外的命令平均执行时延，其他命令分类，请查看文档监控说明 |
| `LatencyOtherProxy` | 其他命令平均时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的读写命令之外的命令平均执行时延，其他命令分类，请查看文档监控说明 |
| `LatencyP99` | P99执行时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延99%水位线 |
| `LatencyP99Command` | P99执行时延 | ms | command,instanceid | 5,60,300,3600,86400 | proxy到redis server的执行时延99%水位线 |
| `LatencyP99Proxy` | P99执行时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的执行时延99%水位线 |
| `LatencyRead` | 读平均时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的读命令平均执行时延，读命令分类，请查看文档监控说明 |
| `LatencyReadProxy` | 读平均时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的读命令平均执行时延，读命令分类，请查看文档监控说明 |
| `LatencyWrite` | 写平均时延 | ms | instanceid | 5,60,300,3600,86400 | proxy到redis server的写命令平均执行时延，读命令分类，请查看文档监控说明 |
| `LatencyWriteProxy` | 写平均时延 | ms | instanceid,pnodeid | 5,60,300,3600,86400 | proxy到redis server的写命令平均执行时延，读命令分类，请查看文档监控说明 |
| `MemMaxUtil` | 节点最大内存使用率 | % | instanceid | 5,60,300,3600,86400 | 实例中节点（分片或者副本）最大内存使用率 |
| `MemUsed` | 内存使用量 | MBytes | instanceid | 5,60,300,3600,86400 | 实际使用内存容量，包含数据和缓存部分 |
| `MemUsedNode` | 内存使用量 | MBytes | instanceid,rnodeid | 5,60,300,3600,86400 | 实际使用内存容量，包含数据和缓存部分 |
| `MemUtil` | 内存使用率 | % | instanceid | 5,60,300,3600,86400 | 实际使用内存和申请总内存之比 |
| `MemUtilNode` | 内存使用率 | % | instanceid,rnodeid | 5,60,300,3600,86400 | 实际使用内存和申请总内存之比 |
| `OutBandwidthUtil` | 内网出流量实际使用和最大流量比 | % | instanceid | 5,60,300,3600,86400 | 内网出流量实际使用和最大流量比 |
| `OutBandwidthUtilProxy` | 内网出流量实际使用和最大流量比 | % | instanceid,pnodeid | 5,60,300,3600,86400 | 内网出流量实际使用和最大流量比 |
| `OutFlow` | 出流量 | MBytes/s | instanceid | 5,60,300,3600,86400 | 内网出流量 |
| `OutFlowLimit` | 出流量限流触发 | Count | instanceid | 5,60,300,3600,86400 | 出流量触发限流的次数 |
| `OutFlowLimitProxy` | 出流量限流触发 | Count | instanceid,pnodeid | 5,60,300,3600,86400 | 出流量触发限流的次数 |
| `OutFlowProxy` | 内网出流量 | MBytes/s | instanceid,pnodeid | 5,60,300,3600,86400 | 内网出流量 |
| `QpsCommand` | 命令请求数(QPS) | Count/s | command,instanceid | 5,60,300,3600,86400 | 命令每秒执行次数 |
| `ReplDelayNode` | 复制延迟 | Bytes | instanceid,rnodeid | 5,60,300,3600,86400 | 副本节点的相对主节点命令延迟长度 |
