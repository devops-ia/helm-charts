# cp-schema-registry

## Motivation

The original Helm chart for [Confluent Schema Registry](https://github.com/confluentinc/cp-helm-charts/tree/master/charts/cp-schema-registry) has been deprecated, and over time it became too bulky and outdated. That's why I've created a new, lighter, and more up-to-date Helm chart. This new chart is more streamlined and easier to customize.

Some of the key changes include:

* Configurations that are compatible with the latest Kubernetes features
* Easier setup, with more modular and flexible options

A Helm chart with cp-schema-registry for Kubernetes

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

## Install Helm chart (repository mode)

```console
helm install [RELEASE_NAME] devops-ia/cp-schema-registry
```

This install all the Kubernetes components associated with the chart and creates the release.

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Uninstall Helm chart

```console
helm uninstall [RELEASE_NAME]
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Configuration

See [Customizing the chart before installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with comments:

```console
helm show values devops-ia/cp-schema-registry
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment </br> Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage </br> Ref: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/ |
| env | object | `{"SCHEMA_REGISTRY_HEAP_OPTS":"-Xms512M -Xmx512M","SCHEMA_REGISTRY_MASTER_ELIGIBILITY":"true"}` | Environment variables to configure application </br> Ref: https://docs.cp-schema-registry.io/latest/deployment/configuration/#platform |
| envFromSecrets | object | `{}` | Secrets from variables |
| fullnameOverride | string | `""` | String to fully override cp-schema-registry.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"confluentinc/cp-schema-registry","tag":""}` | Image registry The image configuration for the base service |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration to expose app </br> Ref: https://kubernetes.io/docs/concepts/services-networking/ingress/ |
| initContainers | list | `[]` | Configure additional containers </br> Ref: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/ |
| livenessProbe | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":180,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}` | Configure liveness checker </br> Ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| livenessProbeCustom | object | `{}` | Custom livenessProbe |
| metrics | object | `{"enabled":false,"exporter":{"enabled":false,"image":{"pullPolicy":"IfNotPresent","repository":"solsson/kafka-prometheus-jmx-exporter@sha256","tag":"6f82e2b0464f50da8104acd7363fb9b995001ddff77d248379f8788e78946143"},"port":5556,"resources":{}},"port":5555}` | Enable metrics |
| metrics.enabled | bool | `false` | Enable or disable |
| metrics.exporter | object | `{"enabled":false,"image":{"pullPolicy":"IfNotPresent","repository":"solsson/kafka-prometheus-jmx-exporter@sha256","tag":"6f82e2b0464f50da8104acd7363fb9b995001ddff77d248379f8788e78946143"},"port":5556,"resources":{}}` | prometheus-jmx-exporter configuration |
| metrics.exporter.enabled | bool | `false` | Enable or disable |
| metrics.exporter.image | object | `{"pullPolicy":"IfNotPresent","repository":"solsson/kafka-prometheus-jmx-exporter@sha256","tag":"6f82e2b0464f50da8104acd7363fb9b995001ddff77d248379f8788e78946143"}` | Image registry The image configuration for the base service |
| metrics.exporter.port | int | `5556` | Expose exporter port |
| metrics.exporter.resources | object | `{}` | Resources limits and requested </br> Ref: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ |
| metrics.port | int | `5555` | Expose metrics port |
| nameOverride | string | `""` | String to partially override cp-schema-registry.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment </br> Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodeselector |
| podAnnotations | object | `{}` | Configure annotations on Pods |
| podDisruptionBudget | object | `{"enabled":false,"maxUnavailable":1,"minAvailable":null}` | Pod Disruption Budget </br> Ref: https://kubernetes.io/docs/reference/kubernetes-api/policy-resources/pod-disruption-budget-v1/ |
| podLabels | object | `{}` | Configure labels on Pods |
| podSecurityContext | object | `{}` | Defines privilege and access control settings for a Pod </br> Ref: https://kubernetes.io/docs/concepts/security/pod-security-standards/ </br> Ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| readinessProbe | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":10,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":1}` | Configure readinessProbe checker </br> Ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| readinessProbeCustom | object | `{}` | Custom readinessProbe |
| replicaCount | int | `1` | Number of replicas Specifies the number of replicas for the service |
| resources | object | `{}` | Resources limits and requested </br> Ref: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ |
| secrets | object | `{}` | Secrets values to create credentials and reference by envFromSecrets Generate Secret with following name: <release-name>-credentials |
| securityContext | object | `{}` | Defines privilege and access control settings for a Container </br> Ref: https://kubernetes.io/docs/concepts/security/pod-security-standards/ </br> Ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| service | object | `{"port":8081,"targetPort":8081,"type":"ClusterIP"}` | Kubernetes service to expose Pod </br> Ref: https://kubernetes.io/docs/concepts/services-networking/service/ |
| service.port | int | `8081` | Kubernetes Service port |
| service.targetPort | int | `8081` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":""}` | Enable creation of ServiceAccount |
| serviceMonitor | object | `{"enabled":false,"interval":"30s","metricRelabelings":[],"relabelings":[],"scrapeTimeout":"10s"}` | Enable ServiceMonitor to get metrics </br> Ref: https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/api.md#servicemonitor |
| serviceMonitor.enabled | bool | `false` | Enable or disable |
| startupProbe | object | `{"enabled":true,"failureThreshold":30,"initialDelaySeconds":180,"periodSeconds":10,"successThreshold":1,"timeoutSeconds":5}` | Configure startupProbe checker </br> Ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes |
| startupProbeCustom | object | `{}` | Custom startupProbe |
| testConnection | bool | `false` | Enable or disable test connection |
| tolerations | list | `[]` | Tolerations for pod assignment </br> Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/ |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition |
| volumes | list | `[]` | Additional volumes on the output Deployment definition |
