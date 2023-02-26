# replika

A Kubernetes operator to replicate resources across namespaces

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
helm install [RELEASE_NAME] devops-ia/replika
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

## Examples

### Replicate on all namespaces

When `matchAll` field is `true`, the resource will replicated on all namespaces except in the namespaces which you choice in `excludeFrom` (_optional_) list and `namespace` field.

```yaml
replikaSources:
  # List of sources
  sources:
    - name: sample-traefik-middleware
      group: "traefik.containo.us"
      version: v1alpha1
      kind: Middleware
      namespace: source-namespace
      target:
        namespaces:
          matchAll: true
          excludeFrom:
            - default
      synchronization: "60s"
```

### Replicate on some namespaces

When `matchAll` field is `false`, you **must** declare `replicateIn` field and choice in which namespaces replicate the source resouce.

```yaml
replikaSources:
  # List of sources
  sources:
    - name: sample-configmap
      group: ""
      version: v1
      kind: ConfigMap
      namespace: source-namespace
      target:
        namespaces:
          replicateIn:
          - destination-namespace
          matchAll: false
      synchronization: "10s"
```

## Configuration

See [Customizing the chart before installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with comments:

```console
helm show values devops-ia/replika
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| args | list | `["--health-probe-bind-address=:8081","--metrics-bind-address=127.0.0.1:8080","--leader-elect","--zap-log-level=debug"]` | Replika arguments |
| autoscaling | object | `{"enabled":false}` | Autoscaling with CPU or memory utilization percentage |
| customResourceDefinitions | list | `[]` | List of CRDs can replicate with replika operator |
| fullnameOverride | string | `""` | String to fully override replika.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"prosimcorp/replika","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| kubeRbacProxy | object | `{"args":["--secure-listen-address=0.0.0.0:8443","--upstream=http://127.0.0.1:8080/","--logtostderr=true","--v=0"],"image":{"pullPolicy":"IfNotPresent","repository":"gcr.io/kubebuilder/kube-rbac-proxy","tag":"v0.8.0"},"ports":[{"port":8443,"portName":"https","protocol":"TCP"}],"resources":{},"securityContext":{},"service":{"enabled":false}}` | kube-rbac-proxy container |
| livenessProbe | object | `{"httpGet":{"path":"/healthz","port":8081},"initialDelaySeconds":15,"periodSeconds":20}` | Liveness probe |
| nameOverride | string | `""` | String to partially override replika.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Annotations to add to the operator pod |
| readinessProbe | object | `{"httpGet":{"path":"/readyz","port":8081},"initialDelaySeconds":5,"periodSeconds":10}` | Readiness Probes |
| replicaCount | int | `1` | Provide desired replicas |
| replikaSources | object | `{}` | Configuration of replika sources |
| resources | object | `{}` | The resources limits and requests |
| securityContext | object | `{"allowPrivilegeEscalation":false,"runAsNonRoot":true}` | Defines privilege and access control settings for a Pod or Container |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| testConnection | bool | `false` | Enable livenessProbe and readinessProbe |
| tolerations | list | `[]` | Tolerations for pod assignment |