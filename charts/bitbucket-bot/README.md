# bitbucket-bot

A Helm chart to deploy Bitbucket Bot for Google Chats (Spaces)

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
helm install [RELEASE_NAME] devops-ia/bitbucket-bot
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
helm show values devops-ia/bitbucket-bot
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| config | object | `{}` | Bitbucket Bot config |
| containerArgs | list | `[]` | Bitbucket Bot container arguments |
| fullnameOverride | string | `""` | String to fully override bitbucket-bot.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"devopsiaci/bitbucket-bot","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration to expose app |
| nameOverride | string | `""` | String to partially override bitbucket-bot.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Pod annotations |
| podSecurityContext | object | `{}` | To specify security settings for a Pod |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| securityContext | object | `{}` | Defines privilege and access control settings for a Pod or Container |
| service | object | `{"port":80,"targetPort":80,"type":"ClusterIP"}` | Kubernetes servide to expose Pod |
| service.port | int | `80` | Kubernetes Service port |
| service.targetPort | int | `80` | Pod expose port |
| service.type | string | `"ClusterIP"` | Kubernetes Service type. Allowed values: NodePort, LoadBalancer or ClusterIP |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| testConnection | bool | `false` | Enable livenessProbe and readinessProbe |
| tolerations | list | `[]` | Tolerations for pod assignment |