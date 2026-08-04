# 腾讯云云监控 Namespace 清单

> 来源：`data.tencentcloud_monitor_alarm_all_namespaces` 查询结果，共 716 个 namespace。

字段说明：
- **ID**: namespace 的 ID（data source 返回的 `id` 字段）
- **Value**: QCE namespace 路径（data source 返回的 `value` 字段，实际用于告警策略配置）
- **Product Name**: 产品名

## CVM/Compute（47）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `SCF` | `QCE/SCF_V2` | SCF-version |
| `cloud_native_gateway` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway instance |
| `cloud_native_gateway_kong_source` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway source |
| `cloud_native_gateway_lb` | `QCE/APIGW_CLOUDNATIVE` | Apigateway cloud native gateway public Load Balancer |
| `cloud_native_gateway_lb_code` | `QCE/APIGW_CLOUDNATIVE` | Apigateway cloud native gateway public Load Balancer l7 |
| `cloud_native_gateway_monitor` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway instance system metrics |
| `cloud_native_gateway_node` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway node |
| `cloud_native_gateway_service` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway service |
| `cnapigw_node_monitor` | `QCE/APIGW_CLOUDNATIVE` | tse-cloud native gateway node system metrics |
| `cnapigw_service_route` | `QCE/APIGW_CLOUDNATIVE` | cnapigw_service_route |
| `cnapigw_service_upstream_health` | `QCE/APIGW_CLOUDNATIVE` | tse cloud native api gateway service upstream health |
| `cvm_device` | `QCE/CVM` | Cloud Virtual Machine |
| `cvm_disk` | `QCE/CVM` | Cloud Virtual Machine-Hard disk partition |
| `cvm_gpu` | `QCE/CVM` | Cloud Virtual Machine-GPU |
| `cvm_internal_monitor` | `QCE/SDN_VM` | Cloud Virtual Machine-Private network monitor |
| `cvm_multi_rdma` | `QCE/CVM` | RDMA monitor |
| `cvm_vrdma` | `QCE/CVM` | CVM-vRDMA  |
| `k8s_node_cvm_disk_iostat` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-storage |
| `lh_traffic` | `QCE/TFP` | TencentCloud Lighthouse - Transfer |
| `lighthouse_basic` | `QCE/LIGHTHOUSE` | Lightweight application server-basic monitoring |
| `lighthouse_bs` | `QCE/BLOCK_STORAGE` | Lighthouse Cloud Block Storage |
| `scf_alias` | `QCE/SCF_V2` | SCF-alias |
| `scf_containers` | `QCE/SCF_V2` | scf_containers |
| `scf_version_containers` | `QCE/SCF_V2` | scf_version_containers |
| `sre_polaris_system_metric` | `TSE/POLARIS` | TSE Polarismesh System Metrics |
| `tcb_scf_alias` | `QCE/SCF_V2` | TCB-SCF-alias |
| `tem_app` | `QCE/TEM` | TEM-Application |
| `tem_replica` | `QCE/TEM` | TEM-Replicas |
| `tse_apollo_env_instance` | `TSE/SRE` | TSE-Apollo-Business Metrics |
| `tse_apollo_jvm_metrics` | `TSE/SRE` | TSE-Apollo-JVM Metrics |
| `tse_apollo_system_metric` | `TSE/SRE` | TSE Apollo System Metrics |
| `tse_consul_pod_all_interface` | `TSE/CONSULAPI` | TSE-Consul-All interface Metrics |
| `tse_consul_pod_business` | `TSE/SRE` | TSE-Consul-Business Metrics |
| `tse_consul_system_metric` | `TSE/CONSULAPI` | TSE Consul System Metrics |
| `tse_eureka_system_metric` | `TSE/SRE` | TSE Eureka System Metrics |
| `tse_nacos_cluster` | `TSE/NACOS` | TSE-Nacos-Cluster Metrics |
| `tse_nacos_pod_all_interface` | `TSE/NACOS` | TSE-Nacos-All interface Metrics	 |
| `tse_nacos_pod_business` | `TSE/NACOS` | TSE-Nacos-Business Metrics |
| `tse_nacos_pod_interface` | `TSE/NACOS` | TSE-Nacos-interface Metrics |
| `tse_nacos_pod_jvm_alert` | `TSE/NACOS` | TSE-Nacos-JVM Metrics |
| `tse_nacos_system_metric` | `TSE/NACOS` | TSE Nacos System Metrics |
| `tse_zookeeper_env_instance` | `TSE/SRE` | TSE-Zookeeper |
| `tse_zookeeper_instance_metric` | `TSE/ZOOKEEPER` | TSE-Zookeeper-Instance Metrics |
| `tse_zookeeper_pod` | `TSE/ZOOKEEPER` | TSE-Zookeeper-Business Metrics |
| `tse_zookeeper_pod_all_interface` | `TSE/ZOOKEEPER` | TSE-Zookeeper-All interface Metrics |
| `tse_zookeeper_pod_interface` | `TSE/ZOOKEEPER` | TSE-Zookeeper-Interface Metrics |
| `tse_zookeeper_system_metric` | `TSE/ZOOKEEPER` | TSE Zookeeper System Metrics |

## Storage/CBS/COS/CFS（20）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `COS` | `QCE/COS` | COS |
| `cfs_appid_monitor` | `QCE/CFS` | CFS statistics |
| `cfs_monitor` | `QCE/CFS` | Cloud File Storage - General |
| `cfs_resource_package_used_rate` | `QCE/CFS` | cfs_resource_package_used_rate |
| `cfs_turbo_quota_info` | `QCE/CFS` | cfs-turbo-quota |
| `cfs_turbos3` | `QCE/CFS` | Cloud File Storage_TurboS3 |
| `cos_meta_acc` | `QCE/COS` | COS-Metadata Acceleration Bucket |
| `cosranger_server` | `QCE/TXMR_COSRANGER` | Elastic MapReduce-COSRANGER-Server |
| `goosefs_alert` | `QCE/GOOSEFS` | GooseFS Accelerator Alert |
| `goosefs_az_alert` | `QCE/GOOSEFS` | GooseFS AZ Accelerator Alert |
| `goosefs_master_dim` | `QCE/TXMR_GOOSEFS` | Elastic MapReduce(dim)-GOOSEFS-Master |
| `goosefs_node_alert` | `QCE/GOOSEFS` | GooseFS Accelerator Node Alert |
| `goosefs_overview_dim` | `QCE/TXMR_GOOSEFS` | Elastic MapReduce(dim)-GOOSEFS-Overview |
| `goosefs_worker_dim` | `QCE/TXMR_GOOSEFS` | Elastic MapReduce(dim)-GOOSEFS-Worker |
| `goosefsx_alert` | `QCE/GOOSEFSX` | GooseFSx Alert |
| `goosefsx_basic_alert` | `QCE/GOOSEFSX` | GooseFSx-Basic Alert |
| `goosefsx_fileset_alert` | `QCE/GOOSEFSX` | GooseFSx-Fileset Alert |
| `goosefsx_node_alert` | `QCE/GOOSEFSX` | GooseFSx-Node Alert |
| `goosefsx_user_alert` | `QCE/GOOSEFSX` | GooseFSx-User Alert |
| `new_cosranger_server` | `QCE/TXMR_COSRANGER` | Elastic MapReduce(dim)-COSRANGER-Server |

## Database（62）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `CDB_SLAVE` | `QCE/CDB` | CDB-MySQL-SLAVE |
| `CMONGO_NODE` | `QCE/CMONGO` | Cloud Database-MongoDB-Mongod node |
| `CMONGO_REPLICA` | `QCE/CMONGO` | Cloud Database-MongoDB-ReplicaSet |
| `CTSDB` | `QCE/CTSDB` | CTSDB |
| `CYNOSDB_MYSQL` | `QCE/CYNOSDB_MYSQL` | Database-TDSQL—C-MySQL |
| `CYNOSDB_PG` | `QCE/CYNOSDB_POSTGRES` | Database-TDSQL-C-PostgreSQL |
| `DCDB` | `QCE/DCDB` | Tencent Distributed SQL |
| `POSTGRESQL` | `QCE/POSTGRES` | PostgreSQL |
| `cdb_cluster` | `QCE/CDB` | CDB-MySQL-CLUSTER |
| `cdb_detail` | `QCE/CDB` | CDB-MySQL-MASTER |
| `cdb_libradb_instance` | `QCE/CDB` | CDB-LIBRADB-INSTANCE |
| `cdb_libradb_node` | `QCE/CDB` | CDB-LIBRADB-NODE |
| `cdb_proxy` | `QCE/CDB` | CDB-MySQL-Proxy |
| `cdwpg_cluster` | `QCE/CDWPG` | CloudDatawarehouse-PostgreSQL2.0-ClusterAlarm |
| `cdwpg_cvm` | `QCE/CDWPG` | CloudDatawarehouse-PostgreSQL2.0-CvmAlarm |
| `cdwpg_node` | `QCE/CDWPG` | CloudDatawarehouse-PostgreSQL2.0-NodeAlarm |
| `cmongo_cd_mongod` | `QCE/CMONGO` | Cloud Database-MongoDB-Cloud Disk IO Monitor |
| `cmongo_instance` | `QCE/CMONGO` | Cloud Database-MongoDB - Cluster |
| `cmongo_mongos_node` | `QCE/CMONGO` | Cloud Database-MongoDB-Mongos node |
| `cynosdb_libradb_instance_monitor` | `QCE/CYNOSDB_MYSQL` | Database-TDSQL—C-LibraDB-Instance |
| `cynosdb_libradb_node_monitor` | `QCE/CYNOSDB_MYSQL` | Database-TDSQL—C-LibraDB-Node |
| `cynosdb_mysql_proxies` | `QCE/CYNOSDB_MYSQL` | Database-TDSQL—C-MySQL-Proxies |
| `cynosdb_mysql_proxy` | `QCE/CYNOSDB_MYSQL` | Database-TDSQL—C-MySQL-Proxy（下线中） |
| `dbbrain_cynosdb_events_critical` | `QCE/DBBRAIN` | CDB-TDSQL-C-DBbrainAlarm-CriticalEvent |
| `dbbrain_cynosdb_events_fatal` | `QCE/DBBRAIN` | CDB-TDSQL-C-DBbrainAlarm-FatalEvent |
| `dbbrain_cynosdb_events_information` | `QCE/DBBRAIN` | CDB-TDSQL-C-DBbrainAlarm-InformationalEvent |
| `dbbrain_cynosdb_events_warning` | `QCE/DBBRAIN` | CDB-TDSQL-C-DBbrainAlarm-WarningEvent |
| `dbbrain_mysql_events` | `QCE/DBBRAIN` | CDB-MySQL-DBbrainAlarm |
| `influxdb_ap_resource` | `QCE/XSTOR` | Cloud Database-CTSDB-InfluxDB-Accesspool |
| `influxdb_database_resource` | `QCE/XSTOR` | Cloud Database-CTSDB-InfluxDB-Database |
| `influxdb_instance_resource` | `QCE/XSTOR` | Cloud Database-CTSDB-InfluxDB-Instance |
| `mariadb_instance` | `QCE/MARIADB` | Cloud Database-MariaDB-Instance |
| `redisUuid` | `QCE/REDIS` | Redis-CKV |
| `redis_hyb_edition` | `QCE/TENDIS` | Cloud Database-Tendis-Hybrid Edition-Instance |
| `redis_hyb_node` | `QCE/TENDIS` | Cloud Database-Tendis-Hybrid Edition-Cache Node |
| `redis_hyb_proxy` | `QCE/TENDIS` | Cloud Database-Tendis-Hybrid Edition - Proxy |
| `redis_hyb_tendis` | `QCE/TENDIS` | Cloud Database-Tendis- Hybrid Edition - Disk Node |
| `redis_mem_edition` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Instance |
| `redis_mem_global` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Global Repl |
| `redis_mem_node` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Redis Node |
| `redis_mem_node_dim` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Redis Node(dim) |
| `redis_mem_proxy` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Proxy |
| `redis_mem_proxy_dim` | `QCE/REDIS_MEM` | Cloud Database-Redis-Memory Edition-Proxy(dim) |
| `sqlserver_instance` | `QCE/SQLSERVER` | CDB (SQL Server) |
| `tbase` | `QCE/TBASE` | Cloud Database-TDSQL PostgreSQL-Instance |
| `tbase_node` | `QCE/TBASE` | Cloud Database-TDSQL PostgreSQL-Node |
| `tcaplus_cluster` | `QCE/TCAPLUS` | TcaplusDB-Cluster Instance |
| `tcaplusdb` | `QCE/TCAPLUS` | TcaplusDB-Table Instance |
| `tdmysql` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Instance |
| `tdmysql_computer_node` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Computer Node |
| `tdmysql_libradb_instance` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Libradb Instance |
| `tdmysql_libradb_node` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Libradb Node |
| `tdmysql_node` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Hyper Node |
| `tdmysql_node_columnar` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Columnar Node |
| `tdmysql_node_storage` | `QCE/TDSTORE` | Cloud Database-TDSQL Boundless-Storage Node |
| `tdsql_a_cdc` | `QCE/TDSQL_A` | Database-TDSQL-H LibraDB-CDC |
| `tdsql_a_clickhouse` | `QCE/TDSQL_A` | Database-TDSQL-H LibraDB-LibraSQL |
| `tdsql_a_zookeeper` | `QCE/TDSQL_A` | Database-TDSQL-H LibraDB-LibraSQL ZooKeeper |
| `tdsql_cluster` | `QCE/MARIADB` | MariaDB |
| `tdsql_instance` | `QCE/TDMYSQL` | Cloud Database-TDSQL MySQL-Instance |
| `tdsqlnexa_catalog_alarm` | `QCE/TDSQLNEXA` | TDSQL NEXA-Catalog Node |
| `tdsqlnexa_node_alarm` | `QCE/TDSQLNEXA` | TDSQL NEXA-ASNODE |

## TKE/Container（34）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `DOCKER_CONTAINER` | `QCE/DOCKER` | docker(old) container |
| `DOCKER_POD` | `QCE/DOCKER` | CCS(old)_Pod |
| `camp_container` | `QCE/CAMP` | Cloud Application Manager Platform Container Basic Metrics |
| `cetcd_pod` | `QCE/ETCD` | CEtcd-Business |
| `cetcd_pod_resource` | `QCE/ETCD` | CEtcd-PodResource |
| `eksci_pod` | `QCE/EKS_INSTANCE` | EksCi-Container group |
| `k8s_cluster2` | `QCE/TKE2` | tke(2.0)-cluster |
| `k8s_component2` | `QCE/TKE2` | tke(2.0)-component |
| `k8s_component_inflight` | `QCE/TKE2` | tke(2.0)-apiserver-inflight |
| `k8s_component_latency` | `QCE/TKE2` | tke(2.0)-apiserver-latency |
| `k8s_component_qps` | `QCE/TKE2` | tke(2.0)-apiserver-qps |
| `k8s_component_qps_detail` | `QCE/TKE2` | tke(2.0)-apiserver-qps-detail |
| `k8s_component_storage` | `QCE/TKE2` | tke(2.0)-apiserver-storage |
| `k8s_container2` | `QCE/TKE2` | tke(2.0)-container |
| `k8s_lb_node` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-nodeLB |
| `k8s_node2` | `QCE/TKE2` | tke(2.0)-node |
| `k8s_node_device` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-basic |
| `k8s_node_disk` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-nodeDisk |
| `k8s_node_disk_info` | `QCE/TKE2` | tke(2.0)-node-disk-info |
| `k8s_node_disk_iostat` | `QCE/TKE2` | tke(2.0)-node-disk-iostat |
| `k8s_node_gpu_device` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-GPU |
| `k8s_node_multi_rdma` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-multiRdma |
| `k8s_pod2` | `QCE/TKE2` | tke(2.0)-pod |
| `k8s_pvc` | `QCE/TKE2` | tke(2.0)-pvc |
| `k8s_sdn_vm_conn` | `QCE/TKE2` | tke(2.0)-nativeNode-machineDimensions-sdnVmConn |
| `k8s_workload2` | `QCE/TKE2` | tke(2.0)-workload |
| `nodemanager_container_dim` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-NodeManager-Container |
| `pod_container` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-Container |
| `pod_cpu` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-CPU |
| `pod_disk` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-Disk |
| `pod_memory` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-Memory |
| `pod_network` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-Network |
| `pod_process` | `QCE/TXMR_POD` | Elastic MapReduce(dim)-POD-Process |
| `polaris_pod` | `TSE/POLARIS` | TSE-Polaris instance-level Metrics |

## Network（96）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `AnycastEIP` | `QCE/CEIP_SUMMARY` | VPC-AnycastEIP |
| `BANDWIDTHPACKAGE` | `QCE/BWP` | VPC-BandwidthPackage |
| `BMIPSECCONN` | `QCE/BM_VPNCONN` | BM_IPSEC VPN Connection |
| `BMIPSECGW` | `QCE/BM_VPNGW` | BM_IPSEC VPN Gateway |
| `BMPC` | `QCE/BM_PCX` | BM_Peering Connections |
| `BMSSLVPNGW` | `QCE/BM_SSLVPNGW` | BM SSL VPN Gateway |
| `BM_LB_IN_LISTENER` | `QCE/BM_INTRA_LB` | BM LoadBalanced-IN Listener |
| `BM_LB_ON_LISTENER` | `QCE/BM_LB` | BM LoadBalanced-ON Listener |
| `BM_NATGW` | `QCE/NAT_GW_BM` | BM NAT GATEWAY |
| `BM_NETDETECT` | `QCE/BM_PING` | BM_NETDETECT |
| `CLB_LISTENER_PRIVATE` | `QCE/LB_PRIVATE` | Private Load-Balancer L4-Listener LB-to-RS |
| `DC_GW` | `QCE/DCG` | DirectConnect Gateway |
| `DSA_DOMAIN` | `QCE/DSA` | ECDN-ECDN_Domain |
| `EIP` | `QCE/LB` | VPC-EIP |
| `EIPv6` | `QCE/LB` | VPC-EIPv6 |
| `NET_DETECT` | `QCE/VPC_NET_DETECT` | VPC-NetDetect |
| `OV_CDN_DOMAIN` | `QCE/OV_CDN` | CDN-Oversea_CDN_Domain |
| `OV_CDN_PROJECT` | `QCE/OV_CDN` | CDN-Oversea_CDN_Project |
| `QAAP_TUNNEL` | `QCE/QAAP` | GAAP-Channel |
| `QAAP_TUNNEL_LISTENER` | `QCE/QAAP` | GAAP-L4_Listener_rs_status |
| `QAAP_TUNNEL_RULE` | `QCE/QAAP` | GAAP-L7_Listener_rs_status |
| `VBC_BETWEEN_REGIONS` | `QCE/VBC` | Cloud Connect Network-Inter-region Monitoring |
| `VBC_SINGLE_REGION_BM` | `QCE/VBC` | Cloud Connect Network-Single-region Monitoring |
| `VPC_CRCCN` | `QCE/PCX` | Cross-region Connection of Classic Network |
| `VPN_GW` | `QCE/VPNGW` | VPN Gateway |
| `alb_instance` | `QCE/ALB` | Application Load Balancer - Instance |
| `alb_listener` | `QCE/ALB` | Application Load Balancer - Listener |
| `alb_rule` | `QCE/ALB` | Application Load Balancer - Rule |
| `alb_target_group` | `QCE/ALB` | Application Load Balancer - TargetGroup |
| `alb_zone` | `QCE/ALB` | Application Load Balancer - Availability Zone |
| `bandwidth_package_new` | `QCE/BWP` | VPC-BandwidthPackage |
| `bandwidth_package_pre` | `QCE/BWP_PRE` | VPC-BandwidthPackage |
| `ccn_traffic_service` | `QCE/VBC` | CCN traffic Service |
| `cdn_domain` | `QCE/CDN` | CDN-China_CDN_Domain |
| `cdn_project` | `QCE/CDN` | CDN-China_CDN_Project |
| `cdn_province_isp` | `QCE/CDN_LOG_DATA` | CDN-China_CDN_Province_Isp |
| `cfw_edge_ip_traffic` | `QCE/CFW` | CFW-Edge firewall-IP Bandwidth |
| `cfw_nat` | `QCE/CFW` | CFW-NAT firewall |
| `cfw_nat_rule` | `QCE/CFW` | CFW-ACL-NAT Rule |
| `cfw_nat_rule_region` | `QCE/CFW` | CFW-ACL-NAT Rule Region |
| `cfw_vpc` | `QCE/CFW` | CFW-Inter-VPC firewall |
| `cfw_vpc_rule` | `QCE/CFW` | CFW-ACL-VPC Rule |
| `clb_l7listener_internal` | `QCE/LB_PRIVATE` | Private Load-Balancer L7-Listener LB to RS |
| `clb_lb` | `QCE/LB_PUBLIC` | Public Load Balancer About drop/usage monitor |
| `clb_lis` | `QCE/LB_PUBLIC` | Public Load-Balancer L7-Listener Client-to-LB |
| `clb_lis_view` | `QCE/LB_PUBLIC` | Public Load-Balancer L4-Listener Client-to-LB |
| `clb_tls_private` | `QCE/LB_PRIVATE` | Layer 7 Listener - TLS Monitoring from Client to Internal LB |
| `clb_tls_public` | `QCE/LB_PUBLIC` | Layer 7 Listener - Client to Public LB TLS Monitoring |
| `client_clb` | `QCE/LB_PUBLIC` | Public Load-Balancer Client-to-LB monitor |
| `custom_statistics_metric_zone_bandwidth` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone-Bandwidth |
| `custom_statistics_metric_zone_group_bandwidth` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone/MetricGroup-Bandwidth |
| `dcchannel` | `QCE/DCX` | Dedicated Line channel |
| `dcline` | `QCE/DC` | Physical dedicated line |
| `diff_az_stats_vpcid` | `QCE/SDN_AZ` | Private Network-Private Network-Single Region |
| `domain` | `QCE/VOD` | VOD-CDN-Domain |
| `dsa_project` | `QCE/DSA` | ECDN-ECDN_Project |
| `edge_region_traffic` | `QCE/CFW` | CFW-Edge firewall-Region Bandwidth |
| `edge_traffic` | `QCE/CFW` | CFW-Edge firewall-Total Bandwidth |
| `lb_hc_vport` | `QCE/LB_PUBLIC` | Cloud Load Balancer-Health Check Monitoring-Per Listener |
| `lb_lbid_lb` | `QCE/LB_PUBLIC` | Public Load-Balancer LB-to-RS indicators |
| `lb_lbid_lis` | `QCE/LB_PUBLIC` | Public Load-Balancer L4-Listener LB-to-RS |
| `lb_rsport` | `QCE/LB_PUBLIC` | Cloud Load Balancer-Server Port-Per Server Port |
| `nat_tc_stat` | `QCE/NAT_GATEWAY` | NAT Gateway |
| `nationwide_packet_loss` | `QCE/ECM_NETWORK` | ecm-network monitor-avg packet loss |
| `native_gateway` | `QCE/TCB` | CloudBase Native Gateway |
| `new_druid_coordinator` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-Coordinator |
| `new_prestosql_coordinator` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce(dim)-PRESTOSQL-Coordinator |
| `new_trino_coordinator` | `QCE/TXMR_TRINO` | Elastic MapReduce(dim)-TRINO-Coordinator |
| `presto_presto_coordinator` | `QCE/TXMR_PRESTO` | Elastic MapReduce-PRESTO-Presto_Coordinator |
| `prestosql_coordinator` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce-PRESTOSQL-Coordinator |
| `private_lb_client_to_clb` | `QCE/LB_PRIVATE` | Private Load-Balancer Client-to-LB indicators |
| `private_lb_client_to_lb_other` | `QCE/LB_PRIVATE` | Private Load Balancer About drop/usage monitor |
| `private_lb_l4_client_to_lb` | `QCE/LB_PRIVATE` | Private Load-Balancer L4-Listener Client-to-LB |
| `private_lb_l7_client_to_lb` | `QCE/LB_PRIVATE` | Private Load-Balancer L7-Listener LB-to-Client |
| `private_lb_lb_to_rs` | `QCE/LB_PRIVATE` | Private Load-Balancer LB-to-Client monitor |
| `private_lb_lb_to_rs_l7` | `QCE/LB_PRIVATE` | Private Load-Balancer About QPS monitor |
| `private_nat_monitor` | `QCE/UNIVERSAL_NAT` | Private NAT Gateway |
| `privatelinkservice` | `QCE/PRIVATE_LINK` | VPC-PrivateLinkSerivce |
| `public_network_monitor` | `QCE/PUBLIC_NETWORK` | VPC-Public bandwidth monitor |
| `public_network_monitor_pre` | `QCE/PUBLIC_NETWORK_PRE` | VPC-Public bandwidth monitor |
| `qaap_tunnel_group` | `QCE/QAAP` | GAAP-Channel-Group |
| `qaap_tunnel_ip` | `QCE/QAAP` | GAAP-Channel_IP |
| `qaap_tunnel_l4_listeners` | `QCE/QAAP` | GAAP-Channel-L4Listeners |
| `qaap_tunnel_listeners` | `QCE/QAAP` | GAAP-Channel-L7Listeners |
| `rss_coordinator` | `QCE/TXMR_RSS` | Elastic MapReduce-RSS-Coordinator |
| `tez_nationwide_packet_loss` | `QCE/TEZ` | tez-network monitor-avg packet loss |
| `trino_coordinator` | `QCE/TXMR_TRINO` | Elastic MapReduce-TRINO-Coordinator |
| `trino_coordinator_es_dim` | `QCE/TXMR_TRINO` | TRINO-Coordinator-ES |
| `uniffle_coordinator` | `QCE/TXMR_UNIFFLE` | UNIFFLE-Coordinator |
| `vpc_eip_packet_loss_monitor` | `QCE/LB` | VPC-EIP-PACKET_LOSS_MONITOR |
| `vpc_endpoint` | `QCE/PRIVATE_LINK` | VPC Endpoint |
| `vpc_region_conn` | `QCE/PCX` | Peering Connections |
| `vpn_tunnel` | `QCE/VPNX` | VPN Channel |
| `waf_clb` | `QCE/WAF` | WAF-CLB-Domain |
| `waf_clb_instance` | `QCE/WAF` | WAF-CLB-Instance |
| `xmcdn_stat` | `QCE/XMCDN` | live-xmcdn |

## MsgQueue（58）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `CKAFKA-CONSUMERGROUP-TOPIC` | `QCE/CKAFKA` | ckafka-consumergroup-topic |
| `CKAFKA_CONSUMERGROUP` | `QCE/CKAFKA` | ckafka-consumergroup-partition |
| `CKAFKA_INSTANCE` | `QCE/CKAFKA` | ckafka-instance |
| `CKAFKA_TOPIC` | `QCE/CKAFKA` | ckafka-topic |
| `CMQ-HEAP-UP` | `QCE/CMQ` | cmq-queue-heap |
| `amqp_cluster_monitor` | `QCE/AMQP` | TDMQ-RabbitMQServerless-instance |
| `amqp_vhost_exchange` | `QCE/AMQP` | TDMQ-amqp-exchange |
| `ckafka_broker` | `QCE/CKAFKA` | ckafka-broker-info |
| `ckafka_connector_set` | `QCE/CKAFKA` | ckafka_connector_set |
| `ckafka_connector_set_k2es` | `QCE/CKAFKA` | ckafka_connector_set_k2es |
| `ckafka_consumergroup_partition_cls_new` | `QCE/CKAFKA` | ckafka-consumergroup-partition-cls-new |
| `ckafka_consumergroup_topic_cls_new` | `QCE/CKAFKA` | ckafka-consumergroup-topic-cls-new |
| `ckafka_cvm` | `QCE/CKAFKA` | ckafka-device-info |
| `ckafka_instance_broker` | `QCE/CKAFKA` | ckafka-instance-broker |
| `ckafka_instance_serverless` | `QCE/CKAFKA` | ckafka-instance-serverless |
| `ckafka_partition` | `QCE/CKAFKA` | ckafka-partition-info |
| `ckafka_topic_cls` | `QCE/CKAFKA` | ckafka-topic-cls |
| `cls_machine_group` | `QCE/CLS` | Machine Group |
| `cmq-queue` | `QCE/CMQ` | cmq-queue-msgrequest |
| `cmq_heap` | `QCE/CMQTOPIC` | cmq-topic-heap |
| `dts_subscribe_consume` | `QCE/DTS` | Data Transfer Service - Data Subscription (Kafka) - Partition |
| `dts_subscribe_consume_group` | `QCE/DTS` | Data Transfer Service - Data Subscription (Kafka) - Group |
| `dts_subscribe_consume_task` | `QCE/DTS` | Data Transfer Service - Data Subscription(Kafka) - Task |
| `dts_subscription` | `QCE/DTS` | Data Transfer Service - Data Subscription(Kafka) - Produce |
| `kafka_dynamic` | `QCE/TXMR_KAFKA` | KAFKA-Dynamic |
| `kafka_kafka` | `QCE/TXMR_KAFKA` | Elastic MapReduce(dim)-KAFKA-Kafka |
| `message` | `QCE/TDMQ` | tdmq-subscription |
| `mqtt_online_client_count` | `QCE/MQTT` | TDMQ - MQTT - Cluster Instance |
| `pulsar_namespaces` | `QCE/TDMQ` | tdmq-pulsar-namespaces |
| `rabbitmq_exchange_metrics` | `QCE/RABBITMQ` | rabbitmq_exchange_metrics(ExpireSoon) |
| `rabbitmq_instance_metrics` | `QCE/RABBITMQ` | rabbitmq_instance_metrics |
| `rabbitmq_node_metrics` | `QCE/RABBITMQ` | rabbitmq_node_metrics |
| `rabbitmq_queue_metrics` | `QCE/RABBITMQ` | rabbitmq_queue_metrics(ExpireSoon) |
| `rabbitmq_vhost_ex_v2` | `QCE/RABBITMQ` | rabbitmq_vhost_ex_v2 |
| `rabbitmq_vhost_metrics` | `QCE/RABBITMQ` | rabbitmq_vhost_metrics(ExpireSoon) |
| `rabbitmq_vhost_q_v2` | `QCE/RABBITMQ` | rabbitmq_vhost_q_v2 |
| `rabbitmq_vhost_v2` | `QCE/RABBITMQ` | rabbitmq_vhost_v2 |
| `rocketmq5_group_view_strategy` | `QCE/ROCKETMQ` | rocketmq5.x-group |
| `rocketmq5_namespace_view_strategy` | `QCE/ROCKETMQ` | rocketmq5.x-tenant |
| `rocketmq5_topic_group_view_strategy` | `QCE/ROCKETMQ` | rocketmq5.x-topic-group |
| `rocketmq5_topic_view_strategy` | `QCE/ROCKETMQ` | rocketmq5.x-topic |
| `rocketmq_router_default_strategy` | `QCE/ROCKETMQ_ROUTER` | rocketmq_router_default_strategy |
| `rocketmq_router_task_strategy` | `QCE/ROCKETMQ_ROUTER` | rocketmq_router_task_strategy |
| `tdm_topic_dim` | `QCE/TDMQ` | tdmq-topic-dim |
| `tdmq_cmq_queue` | `QCE/TDMQ` | cmq-queue |
| `tdmq_cmq_queue_resource` | `QCE/TDMQ` | cmq-queue-resource |
| `tdmq_cmq_topic` | `QCE/TDMQ` | cmq-topic |
| `tdmq_pulsar_cluster` | `QCE/TDMQ` | tdmq-pulsar-cluster |
| `tdmq_rabbitmq_channel` | `QCE/TDMQ` | rabbitmq-channel |
| `tdmq_rabbitmq_connection` | `QCE/TDMQ` | rabbitmq-connection |
| `tdmq_rocketmq_cluster` | `QCE/ROCKETMQ` | rocketmq4.x-cluster |
| `tdmq_rocketmq_group` | `QCE/ROCKETMQ` | rocketmq4.x-group |
| `tdmq_rocketmq_tenant` | `QCE/ROCKETMQ` | rocketmq4.x-tenant |
| `tdmq_rocketmq_topic` | `QCE/TDMQ` | rocketmq-topic(offline) |
| `tdmq_rocketmq_topic_group` | `QCE/ROCKETMQ` | rocketmq4.x-topic-group |
| `tdmq_rocketmq_topic_v2` | `QCE/ROCKETMQ` | rocketmq4.x-topic |
| `tdmq_subscription_dim` | `QCE/TDMQ` | tdmq-subscription-dim |
| `tdmq_tenant` | `QCE/TDMQ` | tdmq-topic |

## EMR/BigData（92）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `DTS_DATA_SUBSCRIPTION` | `QCE/DTS` | Data Transfer Service - Data Subscription |
| `SCM` | `QCE/SNOVA` | CdwpgClusterMonitor |
| `SCS` | `QCE/TSTREAM` | Oceanus |
| `SMNM` | `QCE/SNOVA` | CdwpgMasterNodeMonitor |
| `cdw_a_catalogd_alarm` | `QCE/CDW_A` | TCHouse-X_META_ALARM |
| `cdw_a_impalad_alarm` | `QCE/CDW_A` | TCHouse-X_Warehouse_ALARM |
| `cdw_a_instance_alarm` | `QCE/CDW_A` | TCHouse-X_Instance_ALARM	 |
| `cdw_a_vw_alarm` | `QCE/CDW_A` | TCHouse-X_VirtualWarehouse_ALARM |
| `cdwch_cn_admin` | `QCE/CDWCH_CN` | CDWCH_CN_ADMIN |
| `cdwch_cn_server` | `QCE/CDWCH_CN` | CDWCH_CN_SERVER |
| `cdwdrs_be_alarm` | `QCE/CDWDRS` | TCHouse-D_BE ALARM |
| `cdwdrs_ccr_alarm` | `QCE/CDWDRS` | TCHouse-D_CCR ALARM |
| `cdwdrs_fe_alarm` | `QCE/CDWDRS` | TCHouse-D_FE ALARM |
| `ck_process` | `QCE/CDWCH` | CDWCH_ALARM |
| `dlc_data_engine` | `QCE/DLC` | datalake-sparkengine |
| `dlc_data_engine_by_node` | `QCE/DLC` | datalake-sparkengine-bynode |
| `dlc_presto_engine` | `QCE/DLC` | datalake-prestoengine |
| `dlc_spark_job` | `QCE/DLC` | datalake-sparkjob |
| `dts_replication` | `QCE/DTS` | Data Transfer Service - Data Sync |
| `emr_serverless_hbase` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-SERVERLESS-HBASE |
| `fs_finode_cnt` | `QCE/CHDFS` | chdfs |
| `hbase_hmaster` | `QCE/TXMR_HBASE` | Elastic MapReduce-HBASE-HMaster |
| `hbase_overview_aggregation` | `QCE/TXMR_HBASE` | Elastic MapReduce-HBASE-Overview |
| `hbase_regionserver` | `QCE/TXMR_HBASE` | Elastic MapReduce-HBASE-RegionServer |
| `hbase_regionserver_base2_dim` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-RegionServer-Base2 |
| `hbase_regionsever_wal_dim` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-RegionServer-Wal |
| `hbase_rest_dim` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-HbaseREST |
| `hbase_thrift` | `QCE/TXMR_HBASE` | Elastic MapReduce-HBASE-Thrift |
| `hbase_thrift_dim` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-Thrift |
| `hdfs_datanode` | `QCE/TXMR_HDFS` | Elastic MapReduce-HDFS-DataNode |
| `hdfs_datanode_base2_dim` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-DataNode-Base2 |
| `hdfs_datanode_dynamic` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-DataNode-Dynamic |
| `hdfs_dfsrouter_dim` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-DFSRouter |
| `hdfs_journalnode` | `QCE/TXMR_HDFS` | Elastic MapReduce-HDFS-JournalNode |
| `hdfs_namenode` | `QCE/TXMR_HDFS` | Elastic MapReduce-HDFS-NameNode |
| `hdfs_namenode_es_dim` | `QCE/TXMR_HDFS` | HDFS-NameNode-ES |
| `hdfs_namenode_info_dim` | `QCE/TXMR_HDFS` | HDFS-NameNode-Info |
| `hdfs_overview_aggregation` | `QCE/TXMR_HDFS` | Elastic MapReduce-HDFS-Overview |
| `hdfs_zkfailovercontroller` | `QCE/TXMR_HDFS` | Elastic MapReduce-HDFS-ZKFailoverController |
| `hive_hivemetastore` | `QCE/TXMR_HIVE` | Elastic MapReduce-HIVE-HiveMetaStore |
| `hive_hiveserver2` | `QCE/TXMR_HIVE` | Elastic MapReduce-HIVE-HiveServer2 |
| `hive_hiveserver2_es_dim` | `QCE/TXMR_HIVE` | HIVE-HiveServer2-ES |
| `hive_hivewebhcat` | `QCE/TXMR_HIVE` | Elastic MapReduce-HIVE-HiveWebHcat |
| `kudu_master` | `QCE/TXMR_KUDU` | Elastic MapReduce-KUDU-Master |
| `kudu_master_dim` | `QCE/TXMR_KUDU` | Elastic MapReduce(dim)-KUDU-Master |
| `kudu_server` | `QCE/TXMR_KUDU` | Elastic MapReduce-KUDU-Server |
| `kudu_server_dim` | `QCE/TXMR_KUDU` | Elastic MapReduce(dim)-KUDU-Server |
| `new_hbase_hmaster` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-HMaster |
| `new_hbase_overview_aggregation` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-Overview |
| `new_hbase_regionserver` | `QCE/TXMR_HBASE` | Elastic MapReduce(dim)-HBASE-RegionServer |
| `new_hdfs_datanode` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-DataNode |
| `new_hdfs_journalnode` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-JournalNode |
| `new_hdfs_namenode` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-NameNode |
| `new_hdfs_overview_aggregation` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-Overview |
| `new_hdfs_zkfailovercontroller` | `QCE/TXMR_HDFS` | Elastic MapReduce(dim)-HDFS-ZKFailoverController |
| `new_hive_hivemetastore` | `QCE/TXMR_HIVE` | Elastic MapReduce(dim)-HIVE-HiveMetaStore |
| `new_hive_hiveserver2` | `QCE/TXMR_HIVE` | Elastic MapReduce(dim)-HIVE-HiveServer2 |
| `new_hive_hivewebhcat` | `QCE/TXMR_HIVE` | Elastic MapReduce(dim)-HIVE-HiveWebHcat |
| `new_prestosql_overview` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce(dim)-PRESTOSQL-Overview	 |
| `new_prestosql_worker` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce(dim)-PRESTOSQL-Worker |
| `new_spark_sparkjobhistoryserver` | `QCE/TXMR_SPARK` | Elastic MapReduce(dim)-SPARK-SparkJobHistoryServer |
| `new_yarn_overview_aggregation` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-Overview |
| `new_yarn_resourcemanager` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-ResourceManager |
| `new_yarn_rm_label` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-ResourceMangerLabel |
| `new_yarn_rm_queue` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-ResourceMangerQueue |
| `new_zookeeper_zookeeper` | `QCE/TXMR_ZOOKEEPER` | Elastic MapReduce(dim)-ZOOKEEPER-Zookeeper |
| `presto_overview` | `QCE/TXMR_PRESTO` | Elastic MapReduce-PRESTO-Overview |
| `presto_presto_worker` | `QCE/TXMR_PRESTO` | Elastic MapReduce-PRESTO-Presto_Worker |
| `prestosql_overview` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce-PRESTOSQL-Overview	 |
| `prestosql_worker` | `QCE/TXMR_PRESTOSQL` | Elastic MapReduce-PRESTOSQL-Worker |
| `snova_cluster_node` | `QCE/SNOVA` | CdwpgComputeNodeMonitor |
| `spark_core` | `QCE/DLC` | datalake-spark core |
| `spark_sparkjobhistoryserver` | `QCE/TXMR_SPARK` | Elastic MapReduce-SPARK-SparkJobHistoryServer |
| `spark_streaming_metrics_monitor` | `QCE/DLC` | datalake_spark_streaming_metrics |
| `storm_nimbus` | `QCE/TXMR_STORM` | Elastic MapReduce-STORM-Nimbus |
| `storm_nimbus_dim` | `QCE/TXMR_STORM` | Elastic MapReduce(dim)-STORM-Nimbus |
| `storm_supervisor` | `QCE/TXMR_STORM` | Elastic MapReduce-STORM-Supervisor |
| `storm_supervisor_dim` | `QCE/TXMR_STORM` | Elastic MapReduce(dim)-STORM-Supervisor |
| `yarn_jobhistoryserver` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-JobHistoryServer |
| `yarn_jobhistoryserver_dim` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-JobHistoryServer |
| `yarn_nodemanager` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-NodeManager |
| `yarn_nodemanager_dim` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-NodeManager |
| `yarn_overview_aggregation` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-Overview |
| `yarn_resourcemanager` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-ResourceManager |
| `yarn_resourcemanager_es_dim` | `QCE/TXMR_YARN` | YARN-RM-ES |
| `yarn_rm_dynamic` | `QCE/TXMR_YARN` | 弹性 MapReduce(dim)-YARN-RS-Dynamic |
| `yarn_rm_partition_dim` | `QCE/TXMR_YARN` | YARN-RM-Partition |
| `yarn_rm_queue` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-ResourceMangerQueue |
| `yarn_sparkshuffle_dim` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-SparkShuffle |
| `yarn_timelineserver` | `QCE/TXMR_YARN` | Elastic MapReduce-YARN-TimeLineServer |
| `yarn_timelineserver_dim` | `QCE/TXMR_YARN` | Elastic MapReduce(dim)-YARN-TimeLineServer |
| `zookeeper_zookeeper` | `QCE/TXMR_ZOOKEEPER` | Elastic MapReduce-ZOOKEEPER-Zookeeper |

## Security（10）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `BGPIP` | `QCE/GAME_SECURITY_LB` | Anti-DDoS Advanced |
| `bgpip_domain` | `QCE/DAYU_TGW` | Anti-DDoS Domain Advanced |
| `bgpip_domain_statuscode` | `QCE/DAYU_STATUSCODE` | Anti-DDoS Domain Advanced Status Codes |
| `cfw_acl` | `QCE/CFW` | CFW-ACL |
| `cfw_block_list` | `QCE/CFW` | CFW-ACL-Block List |
| `cfw_dns` | `QCE/CFW` | CFW-DNS firewall |
| `edge_rule_hit_time` | `QCE/CFW` | CFW-ACL-Edge Rule |
| `waf_applet` | `QCE/WAF` | waf_applet |
| `waf_qps` | `QCE/WAF` | WAF-SAAS-Domain |
| `waf_saas_instance` | `QCE/WAF` | WAF-SAAS-Instance |

## Other（297）

| ID | Value (QCE Namespace) | Product Name |
|---|---|---|
| `APIGW_API` | `QCE/APIGATEWAY` | Apigateway api |
| `APIGW_ENV` | `QCE/APIGATEWAY` | Apigateway environment |
| `BS` | `QCE/BLOCK_STORAGE` | Cloud Block Storage |
| `CES` | `QCE/CES` | Elasticsearch Service-ES Instance |
| `CI` | `QCE/CI` | Cloud Infinite |
| `DOCKER_CLUSTER` | `QCE/CVM` | docker(old) cluster |
| `DOCKER_SERVICE` | `QCE/DOCKER` | docker(old) service |
| `MIGRATEJOB_INTERRUPTION` | `QCE/DTS` | Data Transfer Service - Data Migration |
| `TSF` | `QCE/TSF` | TSF-SERVICE |
| `TSF_GROUP` | `QCE/TSF` | TSF-GROUP |
| `TSF_LOG` | `QCE/TSF_LOG` | TSF-LOG |
| `accelerate_area_basic_monitoring` | `QCE/GA2_1` | Global Acceleration 2.0- Accelerating Basic Monitoring |
| `ags_resource_usage` | `QCE/AGS` | sandbox_resource_usage |
| `ai_resource_group_monitor` | `QCE/DLC` | datalake_ai_resource_group |
| `alluxio_master` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce-ALLUXIO-Master |
| `alluxio_master_dim` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce(dim)-ALLUXIO-Master |
| `alluxio_overview` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce-ALLUXIO-Overview |
| `alluxio_overview_dim` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce(dim)-ALLUXIO-Overview |
| `alluxio_worker` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce-ALLUXIO-Worker |
| `alluxio_worker_dim` | `QCE/TXMR_ALLUXIO` | Elastic MapReduce(dim)-ALLUXIO-Worker |
| `amoro_amoro_dim` | `QCE/TXMR_AMORO` | Elastic MapReduce(dim)-AMORO-Amoro |
| `amoro_dynamic` | `QCE/TXMR_AMORO` | Elastic MapReduce(dim)-AMORO-Dynamic |
| `amqp_queue_metrics` | `QCE/AMQP` | amqp_queue_metrics |
| `amqp_vhost_monitor` | `QCE/AMQP` | amqp_vhost_monitor |
| `android_instance` | `QCE/GS` | crtr-paas_android_instance |
| `aoc` | `QCE/DC` | Agile Connection |
| `api_call` | `QCE/FIV` | api_call |
| `apigw_instance` | `QCE/APIGATEWAY` | Apigateway Instance |
| `apis_agency` | `QCE/APIS` | llmsgw-agency |
| `apis_api` | `QCE/APIS` | llmsgw-api |
| `apis_app` | `QCE/APIS` | llmsgw-app |
| `apis_mcp` | `QCE/APIS` | llmsgw-mcp |
| `apis_model_api` | `QCE/APIS` | llmsgw-model-api |
| `appid_gwlb` | `QCE/GWLB` | Gateway Load Balancer-Instance |
| `appid_target` | `QCE/GWLB` | Gateway Load Balancer-Target Groups |
| `asr_qps` | `QCE/ASR` | asr_qps |
| `captcha_usage` | `QCE/CAPTCHA` | monitoring of CAPTCHA usage |
| `captcha_usage_domestic` | `QCE/CAPTCHA` | usageMonitorOfDomestic |
| `celeborn_master_base` | `QCE/TXMR_CELEBORN` | CELEBORN-Master-Base |
| `celeborn_master_jvm` | `QCE/TXMR_CELEBORN` | CELEBORN-Master-JVM |
| `celeborn_worker_base` | `QCE/TXMR_CELEBORN` | CELEBORN-Worker-Base |
| `celeborn_worker_jvm` | `QCE/TXMR_CELEBORN` | CELEBORN-Worker-JVM |
| `celeborn_worker_mem` | `QCE/TXMR_CELEBORN` | CELEBORN-Worker-Mem |
| `ces_datastream` | `QCE/CES` | Elasticsearch Service-Auto Index |
| `ces_index` | `QCE/CES` | Elasticsearch Service-ES Index |
| `ces_inference_service` | `QCE/CES` | Elasticsearch服务-ES Inference Service |
| `cetcd_grpc` | `QCE/ETCD` | CEtcd-gRPC |
| `clickhouse_server` | `QCE/TXMR_CLICKHOUSE` | Elastic MapReduce-CLICKHOUSE-Server |
| `cloud_base_run` | `QCE/TCB` | Tencent Cloud Base |
| `cloud_device` | `QCE/GS` | crtr-cloud_device |
| `cloudmonitor_prometheus_alert_policy` | `QCE/PROMETHEUS` | CloudMonitor-Prometheus-AlertPolicy |
| `cloudmonitor_prometheus_basic_policy` | `QCE/PROMETHEUS` | CloudMonitor-Prometheus-BasicPolicy |
| `cloudmonitor_prometheus_integration_center_policy` | `QCE/PROMETHEUS` | CloudMonitor-Prometheus-IntegrationCenterPolicy |
| `cloudmonitor_prometheus_operator_policy` | `QCE/PROMETHEUS` | CloudMonitor-Prometheus-OperatorPolicy |
| `cloudmonitor_prometheus_scrape_policy` | `QCE/PROMETHEUS` | CloudMonitor-Prometheus-ScrapePolicy |
| `cls_uin_topic` | `QCE/CLS` | cls_uin_topic |
| `cluster_cluster_dim` | `QCE/TXMR_CLUSTER` | Elastic MapReduce(dim)-Cluster-Cluster |
| `cluster_starrocks_cn_warehouse_dim` | `QCE/TXMR_CLUSTER` | Elastic MapReduce(dim)-Cluster-Warehouse |
| `collection_allocated_capacity_gb` | `QCE/CKV` | collection_resource |
| `connector_info_group` | `QCE/CKAFKA` | connector_info_group |
| `consul_req_alert` | `TSE/CONSULAPI` | TSE-Consul-Interface Metrics |
| `csgfs` | `QCE/CSGFS` | CSG-CSGFS |
| `custom_statistics_metric_zone_group_requests` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone/MetricGroup-Requests |
| `custom_statistics_metric_zone_group_traffic` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone/MetricGroup-Traffic |
| `custom_statistics_metric_zone_requests` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone-Requests |
| `custom_statistics_metric_zone_traffic` | `QCE/EDGEONE_CUSTOM` | Custom Statistics Metric-Zone-Traffic |
| `cvd_basic` | `QCE/CVD` | Cloud virtual desktop-basic monitoring |
| `dbdc` | `QCE/EXCLUSTER` | DBDC |
| `deepseek_statistics` | `QCE/DSAPI` | DeepSeek-Statistics |
| `detect_packet_loss_rate` | `QCE/VPC_GW_DETECT` | Detect_Packet_Loss_Rate |
| `device_online_count` | `QCE/IOTHUB` | IoT Hub-Device Status Monitor |
| `diff_az_stats_cross_zone` | `QCE/SDN_AZ` | Private Network-Private Network-Availability Zone |
| `dlc` | `QCE/DLC` | dlc |
| `dlc_bucket` | `QCE/DLC` | datalake-dlcbucket |
| `dlc_gateway` | `QCE/DLC` | datalake-gateway |
| `dlc_gateway_engine_md` | `QCE/DLC` | datalake-gateway-engine-md |
| `dlc_gateway_md` | `QCE/DLC` | datalake-gateway-multidimension |
| `dlc_optimizer_md` | `QCE/DLC` | datalake-optimizer-multidimension |
| `dlc_sqltask_md` | `QCE/DLC` | datalake-sqltask-multidimension |
| `dlc_tcray` | `QCE/DLC` | datalake-tcray |
| `doris_be` | `QCE/TXMR_DORIS` | Elastic MapReduce-DORIS-Be |
| `doris_be_dim` | `QCE/TXMR_DORIS` | Elastic MapReduce(dim)-DORIS-Be |
| `doris_broker` | `QCE/TXMR_DORIS` | Elastic MapReduce-DORIS-Broker |
| `doris_broker_dim` | `QCE/TXMR_DORIS` | Elastic MapReduce(dim)-DORIS-Broker |
| `doris_fe` | `QCE/TXMR_DORIS` | Elastic MapReduce-DORIS-Fe |
| `doris_fe_dim` | `QCE/TXMR_DORIS` | Elastic MapReduce(dim)-DORIS-Fe |
| `drc_cvm_copypair_rpo_error` | `QCE/BDRC` | Backup and Disaster Recovery Center-CVM Disaster RPO |
| `ecm_bs` | `QCE/ECM_BLOCK_STORAGE` | ECM BlockStorage |
| `ecm_device` | `QCE/ECM` | ECM |
| `ecm_lb` | `QCE/ECM` | ECM_NETWORK |
| `ecm_network` | `QCE/ECM_NETWORK` | ECM_PACKET_LOSS_RATE |
| `edge_sdwan` | `QCE/EDGE` | SDWAN Access Service-Edge Device |
| `edge_vport` | `QCE/EDGE` | SDWAN Access Service-EdgeMonitor |
| `ekyc` | `QCE/FACEIDINTL` | Faceid-EKYC |
| `enable_sdns` | `QCE/IOTENABLE` | enable_selfdevnodeservice |
| `etcd` | `QCE/ETCD` | CEtcd-Instance |
| `expire_day` | `QCE/SSL` | SSL Certificate-Expire Day |
| `explorer_license` | `QCE/IOTEXPLORER_LICENSE` | explorer_license_remain_alert |
| `face_detect` | `QCE/FACEIDINTL` | face_detect |
| `flexdb_warning` | `QCE/FLEXDB` | document database warning |
| `flume_agent` | `QCE/TXMR_FLUME` | Elastic MapReduce(dim)-Flume-Agent |
| `gatewayshowapisimplehttpopenapi` | `QCE/TCB` | monitor-httpgateway |
| `host_detail` | `QCE/HOST` | Host Machine |
| `hyper_application_inventor_basic` | `QCE/HAI` | Hyper Application Inventor-basic monitoring |
| `hyper_application_inventor_gpu_alarm` | `QCE/HAI` | Hyper Application Inventor-gpu alarm |
| `ihn_rdma` | `QCE/IHN` | IHN |
| `impala_catalog` | `QCE/TXMR_IMPALA` | Elastic MapReduce-IMPALA-Catalog |
| `impala_daemon` | `QCE/TXMR_IMPALA` | Elastic MapReduce-IMPALA-Daemon |
| `impala_statestore` | `QCE/TXMR_IMPALA` | Elastic MapReduce-IMPALA-StateStore |
| `inference_policy` | `QCE/TOKEN_HUB` | inference_policy |
| `interface_statistics` | `QCE/FACEID` | FaceidInterface-Statistics |
| `irp_instance_monitor` | `QCE/IRP` | irp_instance_monitor |
| `irp_scene_monitor` | `QCE/IRP` | irp_scene_monitor |
| `ivc_expired_cert_reminder` | `QCE/IVC` | DefalutPolicy-ExpiredCertReminder |
| `keeper_process_alarm` | `QCE/CDWCH` | keeper_process_alarm |
| `keewidb_instance` | `QCE/KEEWIDB` | Cloud Database-KeeWiDB-Instance |
| `keewidb_pmedis` | `QCE/PMEDIS` | Cloud Database-KeeWiDB- Keewidb Node |
| `keewidb_proxy` | `QCE/PMEDIS` | Cloud Database-KeeWiDB-Proxy |
| `knox_gateway_jvm_dim` | `QCE/TXMR_KNOX` | KNOX-Gateway-JVM |
| `knox_ldap_jvm_dim` | `QCE/TXMR_KNOX` | KNOX-Ldap-JVM |
| `kstash_monitor` | `QCE/CLS` | kstash_monitor |
| `kylin_kylin` | `QCE/TXMR_KYLIN` | Elastic MapReduce-KYLIN-Kylin |
| `kylin_kylin_dim` | `QCE/TXMR_KYLIN` | Elastic MapReduce(dim)-KYLIN-Kylin |
| `kyuubi_kyuubiserver` | `QCE/TXMR_KYUUBI` | Elastic MapReduce-KYUUBI-KyuubiServer |
| `kyuubi_kyuubiserver_base2` | `QCE/TXMR_KYUUBI` | Elastic MapReduce(dim)-KYUUBI-Kyuubiserver-Base2 |
| `kyuubi_kyuubiserver_dim` | `QCE/TXMR_KYUUBI` | Elastic MapReduce(dim)-KYUUBI-Kyuubiserver |
| `l4_proxy_instance` | `QCE/EDGEONE_L4` | L4 Proxy Instance |
| `l4_proxy_instance_proxy_rule` | `QCE/EDGEONE_L4` | L4 Proxy Instance-proxy rule |
| `lbid_domain` | `QCE/LB_PUBLIC` | Public Load-Balancer L7-Listener Metric in Domain Name Dimension |
| `lbid_lb` | `QCE/LB_PUBLIC` | Public Load-Balancer About QPS monitor |
| `lbid_vport` | `QCE/LB_PUBLIC` | Public Load-Balancer L7-Listener LB to RS |
| `listener_basic_monitoring` | `QCE/GA2_1` | Global Acceleration 2.0- Listener Basic Monitoring |
| `livecallback` | `QCE/LIVE` | Live-Callback |
| `liveness` | `QCE/FACEIDINTL` | Selfie Verification |
| `livestat` | `QCE/LIVE` | Live-Domain |
| `livy_livyserver` | `QCE/TXMR_LIVY` | Elastic MapReduce-LIVY-LivyServer |
| `loadbalance_healthcheck` | `QCE/EDGEONE_LB` | loadbalance_healthcheck |
| `logstash` | `QCE/LOGSTASH` | Logstash |
| `market_api_gw_servces_instance` | `QCE/MARKET` | MarketAPIGateway Services Instance |
| `market_api_gw_useplan` | `QCE/MARKET` | MarketAPIGateway UsePlan |
| `memcached` | `QCE/MEMCACHED` | Cloud Database-Memcached |
| `memcached_instance` | `QCE/REDIS_MEM` | Cloud Database-Memcached-Instance |
| `memory_alert` | `QCE/MEMORY` | Instance memory metrics alert |
| `model_authtoken` | `QCE/TI_MODEL` | Tencent Cloud TI Platform TI-ONE-ModelService-AuthToken |
| `model_ins` | `QCE/TI_MODEL` | Tencent Cloud TI Platform TI-ONE-ModelService-Instance	 |
| `model_insgpu` | `QCE/TI_MODEL` | Tencent Cloud TI Platform TI-ONE-ModelService-GPUInstance	 |
| `model_svc` | `QCE/TI_MODEL` | Tencent Cloud TI Platform TI-ONE-ModelService |
| `model_svcgroup` | `QCE/TI_MODEL` | Tencent Cloud TI Platform TI-ONE-ModelService-ServiceGroup |
| `model_warning` | `QCE/WEDA` | weda model warning |
| `mountpoint_cluster_stategy` | `QCE/GOOSEFS_MP` | MountPoint Cluster Metrics |
| `mountpoint_mountpath_stategy` | `QCE/GOOSEFS_MP` | MountPoint MountPath Metrics |
| `mountpoint_node_stategy` | `QCE/GOOSEFS_MP` | MountPoint Node Metrics |
| `new_cluster_node` | `QCE/TXMR_CLUSTER` | Elastic MapReduce(dim)-Cluster-NODE |
| `new_druid_broker` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-Broker |
| `new_druid_historical` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-Historical |
| `new_druid_middlemanager` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-MiddleManager |
| `new_druid_overlord` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-Overlord |
| `new_druid_router` | `QCE/TXMR_NEW_DRUID` | Elastic MapReduce(dim)-DRUID-Router |
| `new_impala_catalog` | `QCE/TXMR_IMPALA` | Elastic MapReduce(dim)-IMPALA-Catalog |
| `new_impala_daemon` | `QCE/TXMR_IMPALA` | Elastic MapReduce(dim)-IMPALA-Daemon |
| `new_impala_statestore` | `QCE/TXMR_IMPALA` | Elastic MapReduce(dim)-IMPALA-StateStore |
| `new_node_cpu` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-CPU |
| `new_node_disk` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-Disk |
| `new_node_filehandle` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-File Handle |
| `new_node_memory` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-Memory |
| `new_node_network` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-Network |
| `new_node_process` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-Process |
| `new_ranger_admin` | `QCE/TXMR_RANGER` | Elastic MapReduce(dim)-RANGER-Admin |
| `new_ranger_usersync` | `QCE/TXMR_RANGER` | Elastic MapReduce(dim)-RANGER-UserSync |
| `new_trino_overview` | `QCE/TXMR_TRINO` | Elastic MapReduce(dim)-TRINO-Overview |
| `new_trino_worker` | `QCE/TXMR_TRINO` | Elastic MapReduce(dim)-TRINO-Worker |
| `node_cpu` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-CPU |
| `node_disk` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-Disk |
| `node_dynamice` | `QCE/TXMR_NODE` | Elastic MapReduce(dim)-Host Monitor-Dynamic |
| `node_filehandle` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-File Handle |
| `node_memory` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-Memory |
| `node_network` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-Network |
| `node_process` | `QCE/TXMR_NODE` | Elastic MapReduce-Host Monitor-Process |
| `notebook_service_gpu` | `QCE/TI_NOTEBOOK` | Tencent Cloud TI Platform TI-ONE-Devcloud-GPUInstance |
| `ocr_interface_statistics` | `QCE/OCR` | OCR-Interface-Statistics |
| `ocr_interface_statistics_appid` | `QCE/OCR` | OCR-Interface-Statistics(AppID) |
| `ocr_interface_statistics_intl` | `QCE/OCRINTL` | OCR-Interface-Statistics-Intl |
| `oozie_oozie` | `QCE/TXMR_OOZIE` | Elastic MapReduce-OOZIE-Oozie |
| `oozie_oozie_dim` | `QCE/TXMR_OOZIE` | Elastic MapReduce(dim)-OOZIE-Oozie |
| `openldap_slapd_base_dim` | `QCE/TXMR_OPENLDAP` | OpenLDAP-Slapd-Base |
| `package_monitoring` | `QCE/MPA` | package_monitoring |
| `peer_altering` | `QCE/TBAAS` | tbaas-fabric-peer |
| `perf_uin_ep` | `QCE/TOKEN_HUB` | perf_uin_ep_policy |
| `perf_uin_model_policy` | `QCE/TOKEN_HUB` | perf_uin_model_policy |
| `perf_uin_policy` | `QCE/TOKEN_HUB` | perf_uin_policy |
| `performance_monitoring` | `QCE/MPA` | performance_monitoring |
| `plan` | `QCE/EDGEONE_L7` | Plan |
| `polaris_client_and_conn` | `TSE/POLARIS` | TSE-Polaris client_and_conn Metrics |
| `polaris_config` | `TSE/POLARIS` | TSE Polarismesh Config Metrics |
| `polaris_discover` | `TSE/POLARIS` | TSE Polarismesh Discovery Metrics	 |
| `polaris_discover_v2` | `TSE/POLARIS` | TSE Polarismesh Discovery Metrics V2 |
| `polaris_interface` | `TSE/POLARIS` | TSE-Polaris interface-level Metrics |
| `polaris_registry_svc` | `TSE/POLARIS` | TSE Polarismesh Discovery Metrics (service) |
| `polaris_service_call_instance_level` | `TSE/POLARIS` | TSE Polarismesh Service Call Instance-level Metrics	 |
| `polaris_service_call_service_level` | `TSE/POLARIS` | TSE Polarismesh Service Call Service-level Metrics |
| `proxy_node` | `QCE/CASB` | CASB-ProxyNode |
| `quality_traffic_packet_alarm` | `QCE/TFP` | Quality-Traffic-Packet |
| `quota` | `QCE/QUOTA` | Quota Center |
| `ranger_admin` | `QCE/TXMR_RANGER` | Elastic MapReduce-RANGER-Admin |
| `ranger_usersync` | `QCE/TXMR_RANGER` | Elastic MapReduce-RANGER-UserSync |
| `region_action_uin_monitor` | `QCE/PUBLIC_CLOUD_SSM` | SSM-API monitor |
| `region_action_uin_request` | `QCE/PUBLIC_CLOUD_KMS` | KMS-API Monitor |
| `resource` | `QCE/TI_RESOURCE` | Tencent Cloud TI Platform TI-ONE-Resource-Resource Node |
| `resource_board` | `QCE/TI_RESOURCE` | Tencent Cloud TI Platform TI-ONE-Resource-ResourceBoard |
| `resource_group` | `QCE/TI_RESOURCE` | Tencent Cloud TI Platform TI-ONE-Resource-ResourceGroup |
| `resource_group_monitor` | `QCE/DLC` | datalake_resource_group |
| `rss_shuffleserver` | `QCE/TXMR_RSS` | Elastic MapReduce-RSS-ShuffleServer |
| `serverless_index` | `QCE/SERVERLESS` | Elasticsearch Service-Serverless Index |
| `serverless_space` | `QCE/SERVERLESS` | Elasticsearch Service-Serverless Space |
| `service_monitor` | `QD/CC` | qd_monitor-service_monitor |
| `shipper_monitor` | `QCE/CLS` | shipper_monitor |
| `sip_call_limit` | `PSTN/DISPATCH` | sip_call_limit |
| `site_acceleration_host` | `QCE/EDGEONE_L7` | Site Acceleration-host |
| `site_acceleration_host_origin` | `QCE/EDGEONE_L7` | Site Acceleration-host-origin |
| `site_acceleration_site` | `QCE/EDGEONE_L7` | Site Acceleration-site |
| `site_acceleration_zone_origin` | `QCE/EDGEONE_L7` | Site Acceleration-zone-origin	 |
| `smh_zhudong_alarm` | `QCE/SMH` | Smart Media Hosting |
| `soe_qps` | `QCE/SOE` | SOE concurrency/QPS alarm |
| `starrocks_be` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-Base |
| `starrocks_be_cache` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-Cache |
| `starrocks_be_jvm` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-JVM |
| `starrocks_be_las` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-LoadAndStorage |
| `starrocks_be_memory` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-Memory |
| `starrocks_be_sd` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-SharedData |
| `starrocks_be_sf` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-StarletFSLIB |
| `starrocks_be_threadpool` | `QCE/TXMR_STARROCKS` | STARROCKS-Be-Threadpool |
| `starrocks_broker` | `QCE/TXMR_STARROCKS` | Elastic MapReduce(dim)-STARROCKS-Broke |
| `starrocks_cn` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-Base |
| `starrocks_cn_jvm` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-JVM |
| `starrocks_cn_las` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-LoadAndStorage |
| `starrocks_cn_memory` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-Memory |
| `starrocks_cn_pipeline` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-Pipeline |
| `starrocks_cn_sd` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-SharedData |
| `starrocks_cn_sf` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-StarletFSLIB |
| `starrocks_cn_threadpool` | `QCE/TXMR_STARROCKS` | STARROCKS-Cn-Threadpool |
| `starrocks_dynamic` | `QCE/TXMR_STARROCKS` | Elastic MapReduce(dim)-STARROCKS-Dynamic |
| `starrocks_fe` | `QCE/TXMR_STARROCKS` | Elastic MapReduce(dim)-STARROCKS-Fe |
| `starrocks_fe_base2` | `QCE/TXMR_STARROCKS` | Elastic MapReduce(dim)-STARROCKS-Fe-Base2 |
| `starrocks_fe_conn` | `QCE/TXMR_STARROCKS` | STARROCKS-Fe-Connection |
| `starrocks_fe_loadandjnl` | `QCE/TXMR_STARROCKS` | STARROCKS-Fe-LoadAndJNL |
| `starrocks_fe_memory` | `QCE/TXMR_STARROCKS` | STARROCKS-Fe-Memory |
| `starrocks_mv_dynamic` | `QCE/TXMR_STARROCKS` | STARROCKS-FE-MV-Dynamic |
| `sts` | `QCE/TSTREAM` | Setats |
| `sum_alarm` | `QCE/CDWCH` | sum_metrics |
| `tcbr_service` | `QCE/TCBR` | TcbrServiceMonitor |
| `tchouse_x_sr_be_alarm` | `QCE/CDW_A` | TCHouse-X_SR_BE ALARM |
| `tchouse_x_sr_fe_alarm` | `QCE/CDW_A` | TCHouse-X_SR_FE_alarm |
| `tcr_instance` | `QCE/TCR` | TCR Instance |
| `tez_network` | `QCE/TEZ` | TEZ_PACKET_LOSS_RATE |
| `tez_province_packet_loss` | `QCE/TEZ` | tez-network monitor-province packet loss |
| `tfp_remaining_alarm` | `QCE/TFP` | Virtual Private Cloud-Traffic Package |
| `ti_notebook_ins` | `QCE/TI_NOTEBOOK` | Tencent Cloud TI Platform TI-ONE-Devcloud |
| `ti_resource` | `QCE/TI_RESOURCE` | Tencent Cloud TI Platform TI-ONE-Resource-ResourceStatus |
| `tmfa_uin_totalcount` | `CMS/MFA_UIN` | mfa_uin_totalcount |
| `train_ins` | `QCE/TI_TRAINTASK` | Tencent Cloud TI Platform TI-ONE-TrainingTask-Instance |
| `train_taskgpu` | `QCE/TI_TRAINTASK` | Tencent Cloud TI Platform TI-ONE-TrainingTask-GPUInstance |
| `train_tasks` | `QCE/TI_TRAINTASK` | Tencent Cloud TI Platform TI-ONE-TrainingTask-Task |
| `trino_overview` | `QCE/TXMR_TRINO` | Elastic MapReduce-TRINO-Overview |
| `trino_resourcegroup` | `QCE/TXMR_TRINO` | Elastic MapReduce-TRINO-ResourceGroup |
| `trino_worker` | `QCE/TXMR_TRINO` | Elastic MapReduce-TRINO-Worker |
| `ts_datastream` | `QCE/TSEARCH` | TSearch Service-Auto Index |
| `ts_index` | `QCE/TSEARCH` | TSearch Service-TS Index |
| `tsearch` | `QCE/TSEARCH` | TSearch Service-TSearch Instance |
| `tsf_instance` | `QCE/TSF` | TSF-INSTANCE |
| `tsf_task_schedule_flow` | `QCE/TSF_TASK` | TSF-TASK-SCHEDULE-FLOW |
| `tsf_task_schedule_task` | `QCE/TSF_TASK` | TSF-TASK-SCHEDULE-TASK |
| `tsfinterfacealarm` | `QCE/TSF_INTERFACE` | tsf_interface_alarm |
| `tsw_component_alert` | `QCE/TSW` | Tencent service watcher-component-alert |
| `tsw_instance_alert` | `QCE/TSW` | Tencent service watcher-instance-alert |
| `tsw_operation_alert` | `QCE/TSW` | Tencent service watcher-operation-alert |
| `tsw_service_alert` | `QCE/TSW` | Tencent service watcher-service-alert |
| `tts_qps` | `QCE/TTS` | tts_qps |
| `turbo` | `QCE/CFS` | Cloud File Storage |
| `turbo_client_monitor` | `QCE/CFS` | Cloud File Storage-Turbo-Client |
| `uniffle_shuffleserver` | `QCE/TXMR_UNIFFLE` | UNIFFLE-ShuffleServer-Server |
| `uniffle_shuffleserver_grpc` | `QCE/TXMR_UNIFFLE` | UNIFFLE-ShuffleServer-GRPC |
| `uniffle_shuffleserver_jvm` | `QCE/TXMR_UNIFFLE` | UNIFFLE-ShuffleServer-JVM |
| `uniffle_shuffleserver_netty` | `QCE/TXMR_UNIFFLE` | UNIFFLE-ShuffleServer-Netty |
| `usage_uin_apikey_ep_policy` | `QCE/TOKEN_HUB` | usage_uin_apikey_ep_policy |
| `usage_uin_apikey_policy` | `QCE/TOKEN_HUB` | usage_uin_apikey_policy |
| `usage_uin_ep_policy` | `QCE/TOKEN_HUB` | usage_uin_ep_policy |
| `usage_uin_model_ep_policy` | `QCE/TOKEN_HUB` | usage_uin_model_ep_policy |
| `usage_uin_model_policy` | `QCE/TOKEN_HUB` | usage_uin_model_policy |
| `usage_uin_modelname_mstype_policy` | `QCE/TOKEN_HUB` | usage_uin_modelname_mstype_policy |
| `usage_uin_policy` | `QCE/TOKEN_HUB` | usage_uin_policy |
| `vectordb_cluster` | `QCE/VECDB` | Cloud Database-VectorDB-Cluster |
| `vectordb_node` | `QCE/VECDB` | Cloud Database-VectorDB-VectorDB Node |
| `xgcg` | `QCE/5GCG` | 5G Cloud Service Policy |
| `xgcg_provider` | `QCE/5GCG` | 5G Cloud Service Provider Policy |
| `zeppelin_zeppelin` | `QCE/TXMR_ZEPPELIN` | Elastic MapReduce-ZEPPELIN-Zeppelin |
| `zeppelin_zeppelin_dim` | `QCE/TXMR_ZEPPELIN` | Elastic MapReduce(dim)-ZEPPELIN-Zeppelin |
| `zk_process_alarm` | `QCE/CDWCH` | zk_process_alarm |
