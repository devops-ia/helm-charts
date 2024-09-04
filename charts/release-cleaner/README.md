# release-cleaner

A Helm chart for Helm Charts to clean up the releases installed in the declared namespaces

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| amartingarcia | <adrianmg231189@gmail.com> | <https://github.com/devops-ia> |

## Prerequisites

* Helm 3+

## Add repository

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
helm repo update
```

## Install Helm chart

```console
helm install [RELEASE_NAME] devops-ia/release-cleaner
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
helm show values devops-ia/release-cleaner
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Assign custom affinity rules |
| fullnameOverride | string | `""` | Provide a name to substitute for the full names of resources |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"devopsiaci/release-cleaner","tag":"latest"}` | Image of replika deployment |
| imagePullSecrets | list | `[]` | ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images |
| nameOverride | string | `""` | Provide a name in place of replika |
| namespacesClean | string | `"default"` | Text string with the namespace names where the cleaner will work If none is specified, by default it will be executed in the default namespace Example: "default, monitoring" |
| nodeSelector | object | `{}` | Define which Nodes the Pods are scheduled on |
| releasesExclude | object | `{"enabled":false,"releases":["my-release"]}` | Exclusion of releases List of releases to be excluded by the cleaner |
| replicaCount | int | `1` | Provide desired replicas |
| resources | object | `{}` | Resource limits & requests |
| schedule | string | `"5 * * * *"` | Schedule job |
| tolerations | list | `[]` | Pods tolerations |