# steampipe

A Helm chart for Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| amartingarcia | <adrianmg231189@gmail.com> |  |

## Prerequisites

* Helm 3+

## Add repository

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
helm repo update
```

## Install Helm chart

```console
helm install [RELEASE_NAME] devops-ia/steampipe
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
helm show values devops-ia/steampipe
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| args[0] | string | `"--foreground"` |  |
| args[1] | string | `"--show-password"` |  |
| command | list | `[]` |  |
| configProbe | object | `{}` |  |
| dashboard.enabled | bool | `false` |  |
| dashboard.listen | string | `"network"` |  |
| dashboard.port | int | `9194` |  |
| db.enabled | bool | `false` |  |
| db.listen | string | `"local"` |  |
| db.port | int | `9193` |  |
| envFrom | list | `[]` |  |
| env[0].name | string | `"STEAMPIPE_LOG_LEVEL"` |  |
| env[0].value | string | `"TRACE"` |  |
| extraConfig.configMaps.data | string | `nil` |  |
| extraConfig.configMaps.enabled | bool | `false` |  |
| extraConfig.secrets.data | string | `nil` |  |
| extraConfig.secrets.enabled | bool | `false` |  |
| extraVolumeMount | string | `nil` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/turbot/steampipe"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| initContainer.extraInitVolumeMount | list | `[]` |  |
| initContainer.image.pullPolicy | string | `"IfNotPresent"` |  |
| initContainer.image.repository | string | `"ghcr.io/turbot/steampipe"` |  |
| initContainer.image.tag | string | `""` |  |
| initContainer.mods | list | `[]` |  |
| initContainer.plugins | list | `[]` |  |
| initContainer.resources | object | `{}` |  |
| initContainer.securityContext | object | `{}` |  |
| livenessProbe | object | `{}` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |