# helm-release-cleaner

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for Helm Charts release cleaner

**Homepage:** <https://devops-ia.github.io/helm-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| amartingarcia | <adrianmg231189@gmail.com> |  |

## Source Code

* <https://devops-ia.github.io/helm-charts>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"amartingarcia/helm-release-cleaner"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespacesClean | string | `"default"` |  |
| nodeSelector | object | `{}` |  |
| releasesExclude.enabled | bool | `false` |  |
| releasesExclude.releases[0] | string | `"my-release"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| schedule | string | `"5 * * * *"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
