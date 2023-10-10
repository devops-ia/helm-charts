# prometheus-prefect-exporter

A Helm chart to deploy Prometheus Prefect Exporter

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
helm install [RELEASE_NAME] devops-ia/prometheus-prefect-exporter
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
helm show values devops-ia/prometheus-prefect-exporter
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| env | object | `{}` | Environment variables to configure application |
| fullnameOverride | string | `""` | String to fully override prometheus-prefect-exporter.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"devopsiaci/prometheus-prefect-exporter","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration to expose app |
| nameOverride | string | `""` | String to partially override prometheus-prefect-exporter.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Pod annotations |
| podDisruptionBudget | object | `{}` |  |
| podSecurityContext | object | `{}` | To specify security settings for a Pod |
| prometheusRule.additionalLabels | object | `{}` |  |
| prometheusRule.enabled | bool | `false` |  |
| prometheusRule.rules | list | `[]` |  |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| securityContext | object | `{}` | Defines privilege and access control settings for a Pod or Container |
| service | object | `{"port":80,"targetPort":8000,"type":"ClusterIP"}` | Kubernetes servide to expose Pod |
| service.port | int | `80` | Kubernetes Service port |
| service.targetPort | int | `8000` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| serviceMonitor | object | `{"enabled":false,"interval":"30s","metricRelabelings":[],"relabelings":[],"scrapeTimeout":"10s"}` | Enable ServiceMonitor to get metrics ref: https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/api.md#servicemonitor |
| serviceMonitor.enabled | bool | `false` | Enable or disable |
| testConnection | bool | `false` | Enable livenessProbe and readinessProbe |
| tolerations | list | `[]` | Tolerations for pod assignment |
