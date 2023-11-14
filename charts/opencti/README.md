# opencti

A Helm chart to deploy open cyber threat intelligence platform

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ialejandro | <hello@ialejandro.rocks> | <https://ialejandro.rocks> |

## Prerequisites

* Helm 3+

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | elasticsearch | 19.13.* |
| https://charts.bitnami.com/bitnami | minio | 12.8.* |
| https://charts.bitnami.com/bitnami | rabbitmq | 12.3.* |
| https://charts.bitnami.com/bitnami | redis | 18.2.* |
| https://opensearch-project.github.io/helm-charts/ | opensearch | 2.16.* |

## Add repository

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
helm repo update
```

## Install Helm chart

```console
helm install [RELEASE_NAME] devops-ia/opencti
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

## OpenCTI

* [Environment configuration](https://docs.opencti.io/5.11.X/deployment/configuration/#platform)
* [Connectors](https://github.com/OpenCTI-Platform/connectors/tree/master). Review `docker-compose.yaml` with the properly config
* Check connectors samples on `examples` folder

## Configuration

See [Customizing the chart before installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with comments:

```console
helm show values devops-ia/opencti
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| connectors | list | `[]` | Connectors ref: https://github.com/OpenCTI-Platform/connectors/tree/master |
| connectorsGlobalEnv | string | `nil` | Connector Global environment |
| elasticsearch | object | `{"clusterName":"elastic","coordinating":{"replicaCount":0},"data":{"persistence":{"enabled":false},"replicaCount":1},"enabled":true,"extraEnvVars":[{"name":"ES_JAVA_OPTS","value":"-Xms512M -Xmx512M"}],"ingest":{"enabled":false},"master":{"masterOnly":true,"persistence":{"enabled":false},"replicaCount":1},"sysctlImage":{"enabled":false}}` | ElasticSearch subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/elasticsearch/values.yaml |
| elasticsearch.clusterName | string | `"elastic"` | Elasticsearch cluster name |
| elasticsearch.coordinating | object | `{"replicaCount":0}` | Coordinating-only nodes parameters |
| elasticsearch.coordinating.replicaCount | int | `0` | Number of coordinating-only replicas to deploy |
| elasticsearch.data | object | `{"persistence":{"enabled":false},"replicaCount":1}` | Data-only nodes parameters |
| elasticsearch.data.persistence | object | `{"enabled":false}` | Enable persistence using Persistent Volume Claims ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| elasticsearch.data.persistence.enabled | bool | `false` | Enable persistence using a `PersistentVolumeClaim` |
| elasticsearch.data.replicaCount | int | `1` | Number of data-only replicas to deploy |
| elasticsearch.enabled | bool | `true` | Enable or disable ElasticSearch subchart |
| elasticsearch.ingest | object | `{"enabled":false}` | Ingest-only nodes parameters |
| elasticsearch.ingest.enabled | bool | `false` | Enable ingest nodes |
| elasticsearch.master.masterOnly | bool | `true` | Deploy the Elasticsearch master-elegible nodes as master-only nodes. Recommended for high-demand deployments. |
| elasticsearch.master.persistence | object | `{"enabled":false}` | Enable persistence using Persistent Volume Claims ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| elasticsearch.master.persistence.enabled | bool | `false` | Enable persistence using a `PersistentVolumeClaim` |
| elasticsearch.master.replicaCount | int | `1` | Number of master-elegible replicas to deploy |
| env | object | `{"APP__ADMIN__EMAIL":"admin@opencti.io","APP__ADMIN__PASSWORD":"ChangeMe","APP__ADMIN__TOKEN":"ChangeMe","APP__BASE_PATH":"/","ELASTICSEARCH__URL":"http://release-name-elasticsearch:9200","MINIO__ENDPOINT":"release-name-minio:9000","RABBITMQ__HOSTNAME":"release-name-rabbitmq","RABBITMQ__PASSWORD":"ChangeMe","RABBITMQ__PORT":5672,"RABBITMQ__PORT_MANAGEMENT":15672,"RABBITMQ__USERNAME":"user","REDIS__HOSTNAME":"release-name-redis-master","REDIS__MODE":"single","REDIS__PORT":6379}` | Environment variables to configure application ref: https://docs.opencti.io/5.11.X/deployment/configuration/#platform |
| envFromSecrets | object | `{}` | Secrets from variables |
| fullnameOverride | string | `""` | String to fully override opencti.fullname template |
| global | object | `{"imagePullSecrets":[],"imageRegistry":""}` | Global configuration |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"opencti/platform","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration to expose app |
| livenessProbe | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":180,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}` | Configure liveness checker ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| livenessProbeCustom | object | `{}` | Custom livenessProbe |
| minio | object | `{"auth":{"rootPassword":"ChangeMe","rootUser":"ChangeMe"},"enabled":true,"mode":"standalone","persistence":{"enabled":false}}` | MinIO subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/minio/values.yaml  |
| minio.auth.rootPassword | string | `"ChangeMe"` | Password for Minio root user |
| minio.auth.rootUser | string | `"ChangeMe"` | Minio root username |
| minio.enabled | bool | `true` | Enable or disable MinIO subchart |
| minio.mode | string | `"standalone"` | mode Minio server mode (`standalone` or `distributed`) ref: https://docs.minio.io/docs/distributed-minio-quickstart-guide |
| minio.persistence | object | `{"enabled":false}` | Enable persistence using Persistent Volume Claims ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| minio.persistence.enabled | bool | `false` | Enable MinIO data persistence using PVC. If false, use emptyDir |
| nameOverride | string | `""` | String to partially override opencti.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| opensearch | object | `{"enabled":false,"opensearchJavaOpts":"-Xmx512M -Xms512M","persistence":{"enabled":false},"singleNode":true}` | OpenSearch subchart deployment ref: https://github.com/opensearch-project/helm-charts/blob/opensearch-2.16.1/charts/opensearch/values.yaml |
| opensearch.enabled | bool | `false` | Enable or disable OpenSearch subchart |
| opensearch.opensearchJavaOpts | string | `"-Xmx512M -Xms512M"` | OpenSearch Java options |
| opensearch.persistence | object | `{"enabled":false}` | Enable persistence using Persistent Volume Claims ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| opensearch.singleNode | bool | `true` | If discovery.type in the opensearch configuration is set to "single-node", this should be set to "true" If "true", replicas will be forced to 1 |
| rabbitmq | object | `{"auth":{"erlangCookie":"b25c953e-2193-4b8e-9f3b-9a3a5ba76d75","password":"ChangeMe","username":"user"},"clustering":{"enabled":false},"enabled":true,"persistence":{"enabled":false},"replicaCount":1}` | RabbitMQ subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/rabbitmq/values.yaml |
| rabbitmq.auth | object | `{"erlangCookie":"b25c953e-2193-4b8e-9f3b-9a3a5ba76d75","password":"ChangeMe","username":"user"}` | RabbitMQ Authentication parameters |
| rabbitmq.auth.password | string | `"ChangeMe"` | RabbitMQ application password ref: https://github.com/bitnami/containers/tree/main/bitnami/rabbitmq#environment-variables |
| rabbitmq.auth.username | string | `"user"` | RabbitMQ application username ref: https://github.com/bitnami/containers/tree/main/bitnami/rabbitmq#environment-variables |
| rabbitmq.clustering | object | `{"enabled":false}` | Clustering settings |
| rabbitmq.clustering.enabled | bool | `false` | Enable RabitMQ clustering |
| rabbitmq.enabled | bool | `true` | Enable or disable RabbitMQ subchart |
| rabbitmq.persistence | object | `{"enabled":false}` | Persistence parameters |
| rabbitmq.persistence.enabled | bool | `false` | Enable RabbitMQ data persistence using PVC |
| rabbitmq.replicaCount | int | `1` | Number of RabbitMQ replicas to deploy |
| readinessProbe | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | Configure readinessProbe checker ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| readinessProbeCustom | object | `{}` | Custom readinessProbe |
| readyChecker | object | `{"enabled":true,"retries":30,"services":[{"name":"elasticsearch","port":9200},{"name":"minio","port":9000},{"name":"rabbitmq","port":5672},{"name":"redis-master","port":6379}],"timeout":5}` | Enable or disable ready-checker |
| readyChecker.retries | int | `30` | Number of retries before giving up |
| readyChecker.services | list | `[{"name":"elasticsearch","port":9200},{"name":"minio","port":9000},{"name":"rabbitmq","port":5672},{"name":"redis-master","port":6379}]` | List services |
| readyChecker.timeout | int | `5` | Timeout for each check |
| redis | object | `{"architecture":"standalone","auth":{"enabled":false},"enabled":true,"master":{"count":1,"persistence":{"enabled":false}},"replica":{"persistence":{"enabled":false},"replicaCount":1}}` | Redis subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/redis/values.yaml |
| redis.architecture | string | `"standalone"` | Redis architecture. Allowed values: `standalone` or `replication` |
| redis.auth | object | `{"enabled":false}` | Redis Authentication parameters ref: https://github.com/bitnami/containers/tree/main/bitnami/redis#setting-the-server-password-on-first-run |
| redis.auth.enabled | bool | `false` | Enable password authentication |
| redis.enabled | bool | `true` | Enable or disable Redis subchart |
| redis.master | object | `{"count":1,"persistence":{"enabled":false}}` | Redis master configuration parameters |
| redis.master.count | int | `1` | Number of Redis master instances to deploy (experimental, requires additional configuration) |
| redis.master.persistence | object | `{"enabled":false}` | Persistence parameters ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| redis.master.persistence.enabled | bool | `false` | Enable persistence on Redis master nodes using Persistent Volume Claims |
| redis.replica | object | `{"persistence":{"enabled":false},"replicaCount":1}` | Redis replicas configuration parameters |
| redis.replica.persistence | object | `{"enabled":false}` | Persistence parameters ref: https://kubernetes.io/docs/user-guide/persistent-volumes/ |
| redis.replica.persistence.enabled | bool | `false` | Enable persistence on Redis master nodes using Persistent Volume Claims |
| redis.replica.replicaCount | int | `1` | Number of Redis replicas to deploy |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| secrets | object | `{}` | Secrets values to create credencials and reference by envFromSecrets |
| service | object | `{"port":80,"targetPort":4000,"type":"ClusterIP"}` | Kubernetes servide to expose Pod |
| service.port | int | `80` | Kubernetes Service port |
| service.targetPort | int | `4000` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"automountServiceAccountToken":false,"create":true,"name":""}` | Enable creation of ServiceAccount |
| startupProbe | object | `{"enabled":true,"failureThreshold":30,"initialDelaySeconds":180,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}` | Configure startupProbe checker ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| startupProbeCustom | object | `{}` | Custom startupProbe |
| tolerations | list | `[]` | Tolerations for pod assignment |
| worker | object | `{"affinity":{},"autoscaling":{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80},"enabled":true,"env":{"WORKER_LOG_LEVEL":"info"},"envFromSecrets":{},"image":{"pullPolicy":"IfNotPresent","repository":"opencti/worker","tag":""},"nodeSelector":{},"readyChecker":{"enabled":true,"retries":30,"timeout":5},"replicaCount":1,"resources":{},"tolerations":[]}` | OpenCTI worker deployment configuration |
| worker.affinity | object | `{}` | Affinity for pod assignment |
| worker.autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| worker.env | object | `{"WORKER_LOG_LEVEL":"info"}` | Environment variables to configure application ref: https://docs.opencti.io/5.11.X/deployment/configuration/#platform |
| worker.envFromSecrets | object | `{}` | Secrets from variables |
| worker.image | object | `{"pullPolicy":"IfNotPresent","repository":"opencti/worker","tag":""}` | Image registry |
| worker.nodeSelector | object | `{}` | Node labels for pod assignment |
| worker.readyChecker | object | `{"enabled":true,"retries":30,"timeout":5}` | Enable or disable ready-checker waiting server is ready |
| worker.readyChecker.retries | int | `30` | Number of retries before giving up |
| worker.readyChecker.timeout | int | `5` | Timeout for each check |
| worker.replicaCount | int | `1` | Number of replicas |
| worker.resources | object | `{}` | The resources limits and requested |
| worker.tolerations | list | `[]` | Tolerations for pod assignment |