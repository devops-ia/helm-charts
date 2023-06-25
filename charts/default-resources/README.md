# default-resources

A Helm chart for Default Resources

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
helm install [RELEASE_NAME] devops-ia/default-resources
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
helm show values devops-ia/default-resources
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| limitRange.config[0].annotations | object | `{}` |  |
| limitRange.config[0].labels | object | `{}` |  |
| limitRange.config[0].name | string | `"my-limit-range"` |  |
| limitRange.config[0].namespace | string | `"my-namespace"` |  |
| limitRange.config[0].spec[0].max.cpu | string | `"2"` |  |
| limitRange.config[0].spec[0].max.memory | string | `"1Gi"` |  |
| limitRange.config[0].spec[0].min.cpu | string | `"200m"` |  |
| limitRange.config[0].spec[0].min.memory | string | `"6Mi"` |  |
| limitRange.config[0].spec[0].type | string | `"Pod"` |  |
| limitRange.config[0].spec[1].default.cpu | string | `"300m"` |  |
| limitRange.config[0].spec[1].default.memory | string | `"200Mi"` |  |
| limitRange.config[0].spec[1].defaultRequest.cpu | string | `"200m"` |  |
| limitRange.config[0].spec[1].defaultRequest.memory | string | `"100Mi"` |  |
| limitRange.config[0].spec[1].max.cpu | string | `"2"` |  |
| limitRange.config[0].spec[1].max.memory | string | `"1Gi"` |  |
| limitRange.config[0].spec[1].min.cpu | string | `"100m"` |  |
| limitRange.config[0].spec[1].min.memory | string | `"4Mi"` |  |
| limitRange.config[0].spec[1].type | string | `"Container"` |  |
| limitRange.create | bool | `false` |  |
| namespaces.config[0].annotations | object | `{}` |  |
| namespaces.config[0].labels | object | `{}` |  |
| namespaces.config[0].name | string | `"my-namespace"` |  |
| namespaces.create | bool | `false` |  |
| networkPolicies.config[0].annotations | object | `{}` |  |
| networkPolicies.config[0].labels | object | `{}` |  |
| networkPolicies.config[0].name | string | `"my-netpol"` |  |
| networkPolicies.config[0].namespace | string | `"my-namespace"` |  |
| networkPolicies.config[0].spec.egress[0].ports[0].port | int | `5978` |  |
| networkPolicies.config[0].spec.egress[0].ports[0].protocol | string | `"TCP"` |  |
| networkPolicies.config[0].spec.egress[0].to[0].ipBlock.cidr | string | `"10.0.0.0/24"` |  |
| networkPolicies.config[0].spec.ingress[0].from[0].ipBlock.cidr | string | `"172.17.0.0/16"` |  |
| networkPolicies.config[0].spec.ingress[0].from[0].ipBlock.except[0] | string | `"172.17.1.0/24"` |  |
| networkPolicies.config[0].spec.ingress[0].from[1].namespaceSelector.matchLabels.project | string | `"myproject"` |  |
| networkPolicies.config[0].spec.ingress[0].from[2].podSelector.matchLabels.role | string | `"frontend"` |  |
| networkPolicies.config[0].spec.ingress[0].ports[0].port | int | `6379` |  |
| networkPolicies.config[0].spec.ingress[0].ports[0].protocol | string | `"TCP"` |  |
| networkPolicies.config[0].spec.podSelector.matchLabels.role | string | `"db"` |  |
| networkPolicies.config[0].spec.policyTypes[0] | string | `"Ingress"` |  |
| networkPolicies.config[0].spec.policyTypes[1] | string | `"Egress"` |  |
| networkPolicies.create | bool | `false` |  |
| quotas.config[0].annotations | object | `{}` |  |
| quotas.config[0].labels | object | `{}` |  |
| quotas.config[0].name | string | `"my-quota"` |  |
| quotas.config[0].namespace | string | `"my-namespace"` |  |
| quotas.config[0].spec."limits.cpu" | string | `"2"` |  |
| quotas.config[0].spec."limits.memory" | string | `"2Gi"` |  |
| quotas.config[0].spec."requests.cpu" | string | `"1"` |  |
| quotas.config[0].spec."requests.memory" | string | `"1Gi"` |  |
| quotas.config[0].spec."services.loadbalancers" | string | `"4"` |  |
| quotas.config[0].spec."services.nodeports" | string | `"4"` |  |
| quotas.config[0].spec.configmaps | string | `"1"` |  |
| quotas.config[0].spec.persistentvolumeclaims | string | `"2"` |  |
| quotas.config[0].spec.pods | string | `"0"` |  |
| quotas.config[0].spec.replicationcontrollers | string | `"6"` |  |
| quotas.config[0].spec.resourcequotas | string | `"2"` |  |
| quotas.config[0].spec.secrets | string | `"1"` |  |
| quotas.config[0].spec.services | string | `"2"` |  |
| quotas.create | bool | `false` |  |
| secrets.config[0].annotations | object | `{}` |  |
| secrets.config[0].data[0].name | string | `"data-name"` |  |
| secrets.config[0].data[0].value | string | `"data-value"` |  |
| secrets.config[0].labels | object | `{}` |  |
| secrets.config[0].name | string | `"my-secret"` |  |
| secrets.config[0].namespace | string | `"my-namespace"` |  |
| secrets.config[0].type | string | `"Opaque"` |  |
| secrets.create | bool | `false` |  |
| serviceAccounts.config[0].annotations | object | `{}` |  |
| serviceAccounts.config[0].automountServiceAccountToken | bool | `false` |  |
| serviceAccounts.config[0].labels | object | `{}` |  |
| serviceAccounts.config[0].name | string | `"my-sa"` |  |
| serviceAccounts.config[0].namespace | string | `"my-namespace"` |  |
| serviceAccounts.create | bool | `false` |  |
| storageClass.config[0].allowVolumeExpansion | bool | `true` |  |
| storageClass.config[0].allowedTopologies[0].matchLabelExpressions[0].key | string | `"failure-domain.beta.kubernetes.io/zone"` |  |
| storageClass.config[0].allowedTopologies[0].matchLabelExpressions[0].values[0] | string | `"us-central-1a"` |  |
| storageClass.config[0].allowedTopologies[0].matchLabelExpressions[0].values[1] | string | `"us-central-1b"` |  |
| storageClass.config[0].annotations | object | `{}` |  |
| storageClass.config[0].labels | object | `{}` |  |
| storageClass.config[0].mountOptions[0] | string | `"debug"` |  |
| storageClass.config[0].name | string | `"azuredisk-csi-zrs"` |  |
| storageClass.config[0].parameters.skuname | string | `"Premium_ZRS"` |  |
| storageClass.config[0].provisioner | string | `"disk.csi.azure.com"` |  |
| storageClass.config[0].reclaimPolicy | string | `"Delete"` |  |
| storageClass.config[0].volumeBindingMode | string | `"WaitForFirstConsumer"` |  |
| storageClass.create | bool | `false` |  |
| volumeSnapshotClass.config[0].annotations | object | `{}` |  |
| volumeSnapshotClass.config[0].deletionPolicy | string | `"Retain"` |  |
| volumeSnapshotClass.config[0].driver | string | `"my-driver"` |  |
| volumeSnapshotClass.config[0].labels | object | `{}` |  |
| volumeSnapshotClass.config[0].name | string | `"my-volume-snapshot-class"` |  |
| volumeSnapshotClass.config[0].parameters.tags | string | `"foo=aaa,bar=bbb"` |  |
| volumeSnapshotClass.create | bool | `false` |  |