# snapshot-controller

A Helm chart to deploy snapshot-controller

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
helm install [RELEASE_NAME] devops-ia/snapshot-controller
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
helm show values devops-ia/snapshot-controller
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling with CPU or memory utilization percentage |
| fullnameOverride | string | `""` | String to fully override fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"registry.k8s.io/sig-storage/snapshot-controller","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| nameOverride | string | `""` | String to partially override fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Pod annotations |
| podSecurityContext | object | `{}` | To specify security settings for a Pod |
| rbac | object | `{"enabled":false}` | Create RBAC configuration |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | The resources limits and requested |
| securityContext | object | `{}` | Defines privilege and access control settings for a Pod or Container |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| tolerations | list | `[]` | Tolerations for pod assignment |