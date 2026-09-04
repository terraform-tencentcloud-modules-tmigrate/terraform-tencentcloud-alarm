# ─── 查询 Redis 基础指标 ───
# Redis 有 3 个 QCE namespace，实测 DescribeBaseMetrics 结果如下：
#   QCE/REDIS_MEM  —— Redis 内存版（当前主流）→ 80 个指标 ✅
#   QCE/REDIS      —— Redis-CKV（标准架构，老版）→ 0 个指标（已废弃/无基础指标）
#   QCE/TENDIS     —— Tendis 混合存储版 → 0 个指标（无基础指标）
# 因此这里只查询 QCE/REDIS_MEM。
# 返回字段：metric_name / unit / unit_cname / period / periods / dimensions / metric_cname 等

data "tencentcloud_monitor_alarm_basic_metric" "redis_mem" {
  namespace = "QCE/REDIS_MEM"
}

output "redis_mem_metrics" {
  value = data.tencentcloud_monitor_alarm_basic_metric.redis_mem.metric_set
}
