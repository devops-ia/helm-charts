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
| https://charts.bitnami.com/bitnami | minio | 12.6.* |
| https://charts.bitnami.com/bitnami | rabbitmq | 11.13.* |
| https://charts.bitnami.com/bitnami | redis | 17.11.* |
| https://opensearch-project.github.io/helm-charts/ | opensearch | 2.13.* |

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

* [Environment configuration](https://docs.opencti.io/5.8.X/deployment/configuration/#platform)
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
| env | object | `{}` | Environment variables to configure application ref: https://docs.opencti.io/5.8.X/deployment/configuration/#platform |
| envFromSecrets | object | `{}` | Secrets from variables with SOPS cipher |
| fullnameOverride | string | `""` | String to fully override opencti.fullname template |
| global | object | `{"imagePullSecrets":[],"imageRegistry":""}` | Global configuration |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"opencti/platform","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| minio | object | `{"enabled":false}` | MinIO subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/minio/values.yaml  |
| nameOverride | string | `""` | String to partially override opencti.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| opensearch | object | `{"enabled":false}` | OpenSearch subchart deployment ref: https://github.com/opensearch-project/helm-charts/blob/opensearch-2.13.0/charts/opensearch/values.yaml |
| rabbitmq | object | `{"enabled":false}` | RabbitMQ subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/rabbitmq/values.yaml |
| redis | object | `{"enabled":false}` | Redis subchart deployment ref: https://github.com/bitnami/charts/blob/main/bitnami/redis/values.yaml |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| secrets | object | `{}` | Secrets values to create credencials (cipher with SOPS) and reference by envFromSecrets |
| service | object | `{"port":80,"targetPort":4000,"type":"ClusterIP"}` | Kubernetes servide to expose Pod |
| service.port | int | `80` | Kubernetes Service port |
| service.targetPort | int | `4000` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| tolerations | list | `[]` | Tolerations for pod assignment |
| worker | object | `{"affinity":{},"autoscaling":{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80},"enabled":true,"env":{},"envFromSecrets":{},"image":{"pullPolicy":"IfNotPresent","repository":"opencti/worker","tag":""},"nodeSelector":{},"replicaCount":1,"resources":{},"tolerations":[]}` | OpenCTI worker deployment configuration |
| worker.affinity | object | `{}` | Affinity for pod assignment |
| worker.autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| worker.env | object | `{}` | Environment variables to configure application ref: https://docs.opencti.io/5.8.X/deployment/configuration/#platform |
| worker.envFromSecrets | object | `{}` | Secrets from variables with SOPS cipher |
| worker.image | object | `{"pullPolicy":"IfNotPresent","repository":"opencti/worker","tag":""}` | Image registry |
| worker.nodeSelector | object | `{}` | Node labels for pod assignment |
| worker.replicaCount | int | `1` | Number of replicas |
| worker.resources | object | `{}` | The resources limits and requested |
| worker.tolerations | list | `[]` | Tolerations for pod assignment |