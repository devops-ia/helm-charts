# helm-release-cleaner

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for Helm Charts release cleaner

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image | list | `[]` |  |
| imagePullSecrets[0].name | string | `"registrypullsecret"` |  |
| namespacesClear | string | `""` |  |
| nodeSelector | list | `[]` |  |
| releasesExcludeConfig.enabled | bool | `false` |  |
| releasesExcludeConfig.releases | string | `nil` |  |
| replicaCount | string | `""` |  |
| resources | list | `[]` |  |
| schedule | string | `""` |  |
| tolerations | object | `{}` |  |

