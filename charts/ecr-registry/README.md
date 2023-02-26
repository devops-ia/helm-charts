# ecr-registry

CronJob to update Amazon Elastic Container Registry

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
helm install [RELEASE_NAME] devops-ia/ecr-token
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

#### Set config

```console
helm install ecr-token devops-ia/ecr-token --set schedule="0 */4 * * *" --set elasticContainerRegistry="account.dkr.ecr.region.amazonaws.com" --set env.AWS_ACCESS_KEY_ID="XXXXXXX" --set env.AWS_SECRET_ACCESS_KEY="XXXXXXX"
```

#### Use chart `secrets` and `envFromSecrets` reference

```console
# values example
secrets:
  AWS_ACCESS_KEY_ID: XXXXXXX
  AWS_SECRET_ACCESS_KEY: XXXXXXX
...
envFromSecrets:
  AWS_ACCESS_KEY_ID:
    name: [RELEASE_NAME]-credentials
    key: AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY:
    name: [RELEASE_NAME]-credentials
    key: AWS_SECRET_ACCESS_KEY
```

#### Use external `Secret` file and reference with `envFromSecrets`

```console
# values example
...
envFromSecrets:
  AWS_ACCESS_KEY_ID:
    name: my-secret-file
    key: AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY:
    name: my-secret-file
    key: AWS_SECRET_ACCESS_KEY
```

## Configuration

See [Customizing the chart before installing](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing). To see all configurable options with comments:

```console
helm show values devops-ia/ecr-token
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| concurrencyPolicy | string | `"Forbid"` | It specifies how to treat concurrent executions of a job that is created by this CronJob |
| elasticContainerRegistry | string | `"account.dkr.ecr.region.amazonaws.com"` | Amazon Elastic Container Registry endpoint. Format: `account.dkr.ecr.region.amazonaws.com` |
| env | object | `{}` | Environment variables to configure application |
| envFromSecrets | object | `{}` | Secrets from variables |
| failedJobsHistoryLimit | int | `1` | These fields specify how many failed jobs should be kept |
| fullnameOverride | string | `""` | String to fully override ecr-token.fullname template |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"devopsiaci/ecr-token","tag":""}` | Image registry |
| imagePullSecrets | list | `[]` | Global Docker registry secret names as an array |
| nameOverride | string | `""` | String to partially override ecr-token.fullname template (will maintain the release name) |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podSecurityContext | object | `{}` | To specify security settings for a Pod |
| resources | object | `{}` | The resources limits and requests |
| restartPolicy | string | `"OnFailure"` | Only refers to restarts of the containers by the kubelet on the same node |
| schedule | string | `"0 */6 * * *"` | The value of that field follows the Cron syntax |
| secrets | object | `{}` | Secrets values to create credencials and reference by envFromSecrets |
| securityContext | object | `{}` | Defines privilege and access control settings for a Pod or Container. |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` | Enable creation of ServiceAccount |
| successfulJobsHistoryLimit | int | `1` | These fields specify how many completed jobs should be kept |
| tolerations | list | `[]` | Tolerations for pod assignment |