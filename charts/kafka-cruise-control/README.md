# kafka-cruise-control

# kafka-cruise-control

A Helm chart to deploy Kafka Cruise Control

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ialejandro | <hello@ialejandro.rocks> | <https://ialejandro.rocks> |

## Prerequisites

* Helm 3+

## Add repository

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
helm repo update
```

## Install Helm chart

```console
helm install [RELEASE_NAME] devops-ia/kafka-cruise-control
```

This install all the Kubernetes components associated with the chart and creates the release.

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Uninstall Helm chart

```console
# Helm
helm uninstall [RELEASE_NAME]
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Configuration

See [Customizing the chart before installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with comments:

```console
helm show values devops-ia/kafka-cruise-control
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| config | object | `{"anomaly.detection.goals":["com.linkedin.kafka.cruisecontrol.analyzer.goals.RackAwareGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.MinTopicLeadersPerBrokerGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuCapacityGoal"],"anomaly.detection.interval.ms":"10000","anomaly.notifier.class":"com.linkedin.kafka.cruisecontrol.detector.notifier.SelfHealingNotifier","bootstrap.servers":"localhost:9092","broker.metric.sample.store.topic":"__KafkaCruiseControlModelTrainingSamples","broker.metrics.window.ms":300000,"broker.sample.store.topic.partition.count":8,"capacity.config.file":"config/capacityCores.json","client.id":"kafka-cruise-control","cluster.configs.file":"config/clusterConfigs.json","completed.cruise.control.admin.user.task.retention.time.ms":604800000,"completed.cruise.control.monitor.user.task.retention.time.ms":86400000,"completed.kafka.admin.user.task.retention.time.ms":604800000,"completed.kafka.monitor.user.task.retention.time.ms":86400000,"completed.user.task.retention.time.ms":86400000,"connections.max.idle.ms":540000,"cpu.balance.threshold":1.1,"cpu.capacity.threshold":0.7,"cpu.low.utilization.threshold":0,"default.goals":["com.linkedin.kafka.cruisecontrol.analyzer.goals.RackAwareGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.MinTopicLeadersPerBrokerGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.PotentialNwOutGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.TopicReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.LeaderReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.LeaderBytesInDistributionGoal"],"default.replica.movement.strategies":["com.linkedin.kafka.cruisecontrol.executor.strategy.BaseReplicaMovementStrategy"],"demotion.history.retention.time.ms":1209600000,"disk.balance.threshold":1.1,"disk.capacity.threshold":0.8,"disk.low.utilization.threshold":0,"execution.progress.check.interval.ms":10000,"goals":["com.linkedin.kafka.cruisecontrol.analyzer.goals.RackAwareGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.RackAwareDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.MinTopicLeadersPerBrokerGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.PotentialNwOutGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.TopicReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.LeaderReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.LeaderBytesInDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.kafkaassigner.KafkaAssignerDiskUsageDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.kafkaassigner.KafkaAssignerEvenRackAwareGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.PreferredLeaderElectionGoal"],"hard.goals":["com.linkedin.kafka.cruisecontrol.analyzer.goals.RackAwareGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.MinTopicLeadersPerBrokerGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.TopicReplicaDistributionGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.ReplicaCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.DiskCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkInboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.NetworkOutboundCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.CpuCapacityGoal"],"intra.broker.goals":["com.linkedin.kafka.cruisecontrol.analyzer.goals.IntraBrokerDiskCapacityGoal","com.linkedin.kafka.cruisecontrol.analyzer.goals.IntraBrokerDiskUsageDistributionGoal"],"max.active.user.tasks":5,"max.cached.completed.cruise.control.admin.user.tasks":30,"max.cached.completed.cruise.control.monitor.user.tasks":20,"max.cached.completed.kafka.admin.user.tasks":30,"max.cached.completed.kafka.monitor.user.tasks":20,"max.cached.completed.user.tasks":25,"max.num.cluster.partition.movements":1250,"max.replicas.per.broker":10000,"metric.anomaly.analyzer.metrics":["BROKER_PRODUCE_LOCAL_TIME_MS_50TH","BROKER_PRODUCE_LOCAL_TIME_MS_999TH","BROKER_CONSUMER_FETCH_LOCAL_TIME_MS_50TH","BROKER_CONSUMER_FETCH_LOCAL_TIME_MS_999TH","BROKER_FOLLOWER_FETCH_LOCAL_TIME_MS_50TH","BROKER_FOLLOWER_FETCH_LOCAL_TIME_MS_999TH","BROKER_LOG_FLUSH_TIME_MS_50TH","BROKER_LOG_FLUSH_TIME_MS_999TH"],"metric.anomaly.detection.interval.ms":120000,"metric.anomaly.finder.class":"com.linkedin.kafka.cruisecontrol.detector.KafkaMetricAnomalyFinder","metric.anomaly.percentile.lower.threshold":10,"metric.anomaly.percentile.upper.threshold":90,"metric.sampler.class":"com.linkedin.kafka.cruisecontrol.monitor.sampling.prometheus.PrometheusMetricSampler","metric.sampler.partition.assignor.class":"com.linkedin.kafka.cruisecontrol.monitor.sampling.DefaultMetricSamplerPartitionAssignor","metric.sampling.interval.ms":120000,"min.samples.per.broker.metrics.window":1,"min.samples.per.partition.metrics.window":1,"min.valid.partition.ratio":0.95,"network.inbound.balance.threshold":1.1,"network.inbound.capacity.threshold":0.8,"network.inbound.low.utilization.threshold":0,"network.outbound.balance.threshold":1.1,"network.outbound.capacity.threshold":0.8,"network.outbound.low.utilization.threshold":0,"num.broker.metrics.windows":20,"num.concurrent.intra.broker.partition.movements":2,"num.concurrent.leader.movements":1000,"num.concurrent.partition.movements.per.broker":5,"num.partition.metrics.windows":5,"num.proposal.precompute.threads":1,"num.sample.loading.threads":8,"partition.metric.sample.store.topic":"__KafkaCruiseControlPartitionMetricSamples","partition.metrics.window.ms":300000,"partition.sample.store.topic.partition.count":8,"prometheus.server.endpoint":"prometheus.prometheus:9090","proposal.expiration.ms":60000,"removal.history.retention.time.ms":1209600000,"replica.count.balance.threshold":1.1,"replica.movement.strategies":["com.linkedin.kafka.cruisecontrol.executor.strategy.PostponeUrpReplicaMovementStrategy","com.linkedin.kafka.cruisecontrol.executor.strategy.PrioritizeLargeReplicaMovementStrategy","com.linkedin.kafka.cruisecontrol.executor.strategy.PrioritizeSmallReplicaMovementStrategy","com.linkedin.kafka.cruisecontrol.executor.strategy.PrioritizeMinIsrWithOfflineReplicasStrategy","com.linkedin.kafka.cruisecontrol.executor.strategy.PrioritizeOneAboveMinIsrWithOfflineReplicasStrategy","com.linkedin.kafka.cruisecontrol.executor.strategy.BaseReplicaMovementStrategy"],"sample.store.class":"com.linkedin.kafka.cruisecontrol.monitor.sampling.KafkaSampleStore","sample.store.topic.replication.factor":2,"sampling.allow.cpu.capacity.estimation":true,"self.healing.disk.failure.enabled":false,"self.healing.enabled":false,"self.healing.exclude.recently.demoted.brokers":true,"self.healing.exclude.recently.removed.brokers":true,"self.healing.goal.violation.enabled":false,"self.healing.maintenance.event.enabled":false,"self.healing.metric.anomaly.enabled":false,"self.healing.topic.anomaly.enabled":false,"topic.anomaly.finder.class":"com.linkedin.kafka.cruisecontrol.detector.TopicReplicationFactorAnomalyFinder","topic.config.provider.class":"com.linkedin.kafka.cruisecontrol.config.KafkaAdminTopicConfigProvider","topics.excluded.from.partition.movement":"__consumer_offsets.*|__amazon_msk_canary.*|__amazon_msk_connect.*|__KafkaCruiseControl.*","two.step.purgatory.max.requests":25,"two.step.purgatory.retention.time.ms":1209600000,"two.step.verification.enabled":false,"vertx.enabled":false,"webserver.accesslog.enabled":true,"webserver.api.urlprefix":"/kafkacruisecontrol/*","webserver.http.address":"0.0.0.0","webserver.http.cors.enabled":false,"webserver.http.port":9090,"webserver.request.maxBlockTimeMs":10000,"webserver.session.maxExpiryTimeMs":60000,"webserver.session.path":"/","webserver.ui.diskpath":"./cruise-control-ui/dist/","webserver.ui.urlprefix":"/*","zookeeper.security.enabled":false}` | kafka-cruise-control service configuration ref: https://github.com/linkedin/cruise-control/wiki/Configurations |
| fullnameOverride | string | `""` | String to fully override kafka-cruise-control.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"https://hub.docker.com/r/devopsiaci/cruise-control","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration to expose app |
| kafkaCluster | object | `{"networkIn":1000,"networkOut":1000,"numCores":2,"storage":1024}` | Cluster configuration |
| livenessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | Liveness probe configuration to check if the application is running |
| log4j."appender.console.layout.pattern" | string | `"[%d] %p %m (%c)%n"` |  |
| log4j."appender.console.layout.type" | string | `"PatternLayout"` |  |
| log4j."appender.console.name" | string | `"STDOUT"` |  |
| log4j."appender.console.type" | string | `"Console"` |  |
| log4j."appender.kafkaCruiseControlAppender.fileName" | string | `"${filename}/kafkacruisecontrol.log"` |  |
| log4j."appender.kafkaCruiseControlAppender.filePattern" | string | `"${filename}/kafkacruisecontrol.log.%d{yyyy-MM-dd-HH}"` |  |
| log4j."appender.kafkaCruiseControlAppender.layout.pattern" | string | `"[%d] %p %m (%c)%n"` |  |
| log4j."appender.kafkaCruiseControlAppender.layout.type" | string | `"PatternLayout"` |  |
| log4j."appender.kafkaCruiseControlAppender.name" | string | `"kafkaCruiseControlFile"` |  |
| log4j."appender.kafkaCruiseControlAppender.policies.time.interval" | int | `1` |  |
| log4j."appender.kafkaCruiseControlAppender.policies.time.type" | string | `"TimeBasedTriggeringPolicy"` |  |
| log4j."appender.kafkaCruiseControlAppender.policies.type" | string | `"Policies"` |  |
| log4j."appender.kafkaCruiseControlAppender.type" | string | `"RollingFile"` |  |
| log4j."appender.operationAppender.fileName" | string | `"${filename}/kafkacruisecontrol-operation.log"` |  |
| log4j."appender.operationAppender.filePattern" | string | `"${filename}/kafkacruisecontrol-operation.log.%d{yyyy-MM-dd}"` |  |
| log4j."appender.operationAppender.layout.pattern" | string | `"[%d] %p [%c] %m %n"` |  |
| log4j."appender.operationAppender.layout.type" | string | `"PatternLayout"` |  |
| log4j."appender.operationAppender.name" | string | `"operationFile"` |  |
| log4j."appender.operationAppender.policies.time.interval" | int | `1` |  |
| log4j."appender.operationAppender.policies.time.type" | string | `"TimeBasedTriggeringPolicy"` |  |
| log4j."appender.operationAppender.policies.type" | string | `"Policies"` |  |
| log4j."appender.operationAppender.type" | string | `"RollingFile"` |  |
| log4j."appender.requestAppender.fileName" | string | `"${filename}/kafkacruisecontrol-request.log"` |  |
| log4j."appender.requestAppender.filePattern" | string | `"${filename}/kafkacruisecontrol-request.log.%d{yyyy-MM-dd-HH}"` |  |
| log4j."appender.requestAppender.layout.pattern" | string | `"[%d] %p %m (%c)%n"` |  |
| log4j."appender.requestAppender.layout.type" | string | `"PatternLayout"` |  |
| log4j."appender.requestAppender.name" | string | `"requestFile"` |  |
| log4j."appender.requestAppender.policies.time.interval" | int | `1` |  |
| log4j."appender.requestAppender.policies.time.type" | string | `"TimeBasedTriggeringPolicy"` |  |
| log4j."appender.requestAppender.policies.type" | string | `"Policies"` |  |
| log4j."appender.requestAppender.type" | string | `"RollingFile"` |  |
| log4j."logger.CruiseControlPublicAccessLogger.appenderRef.requestAppender.ref" | string | `"requestFile"` |  |
| log4j."logger.CruiseControlPublicAccessLogger.level" | string | `"info"` |  |
| log4j."logger.CruiseControlPublicAccessLogger.name" | string | `"CruiseControlPublicAccessLogger"` |  |
| log4j."logger.cruisecontrol.appenderRef.kafkaCruiseControlAppender.ref" | string | `"kafkaCruiseControlFile"` |  |
| log4j."logger.cruisecontrol.level" | string | `"info"` |  |
| log4j."logger.cruisecontrol.name" | string | `"com.linkedin.kafka.cruisecontrol"` |  |
| log4j."logger.detector.appenderRef.kafkaCruiseControlAppender.ref" | string | `"kafkaCruiseControlFile"` |  |
| log4j."logger.detector.level" | string | `"info"` |  |
| log4j."logger.detector.name" | string | `"com.linkedin.kafka.cruisecontrol.detector"` |  |
| log4j."logger.operationLogger.appenderRef.operationAppender.ref" | string | `"operationFile"` |  |
| log4j."logger.operationLogger.level" | string | `"info"` |  |
| log4j."logger.operationLogger.name" | string | `"operationLogger"` |  |
| log4j."property.filename" | string | `"./logs"` |  |
| log4j."rootLogger.appenderRef.console.ref" | string | `"STDOUT"` |  |
| log4j."rootLogger.appenderRef.kafkaCruiseControlAppender.ref" | string | `"kafkaCruiseControlFile"` |  |
| log4j."rootLogger.appenderRefs" | string | `"console, kafkaCruiseControlAppender"` |  |
| log4j."rootLogger.level" | string | `"INFO"` |  |
| log4j.appenders | string | `"console, kafkaCruiseControlAppender, operationAppender, requestAppender"` |  |
| nameOverride | string | `""` | String to partially override kafka-cruise-control.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Pod annotations |
| podLabels | object | `{}` | Pod labels |
| podSecurityContext | object | `{}` | To specify security settings for a Pod |
| readinessProbe | object | `{"httpGet":{"path":"/","port":"http"}}` | Readiness probe configuration to check if the application is ready to accept traffic |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| securityContext | object | `{}` | Defines privilege and access control settings for a Pod or Container |
| service | object | `{"port":80,"targetPort":9090,"type":"ClusterIP"}` | Kubernetes servide to expose Pod |
| service.port | int | `80` | Kubernetes Service port |
| service.targetPort | int | `9090` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"automount":false,"create":true,"name":""}` | Enable creation of ServiceAccount |
| testConnection | bool | `false` | Enable livenessProbe and readinessProbe |
| tolerations | list | `[]` | Tolerations for pod assignment |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
