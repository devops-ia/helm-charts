# ssl-exporter

A Helm Chart to SSL Certificate Exporter for Prometheus

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| amartingarcia |  | <https://github.com/devops-ia> |

## Prerequisites

* Helm 3+

## Add repository

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
helm repo update
```

## Install Helm chart

```console
helm install [RELEASE_NAME] devops-ia/ssl-exporter
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
helm show values devops-ia/ssl-exporter
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.data | string | `"modules:\n  https:\n    prober: https\n  https_insecure:\n    prober: https\n    tls_config:\n      insecure_skip_verify: true\n  https_proxy:\n    prober: https\n    https:\n      proxy_url: \"socks5://localhost:8123\"\n  https_timeout:\n    prober: https\n    timeout: 3s\n  tcp:\n    prober: tcp\n  tcp_servername:\n    prober: tcp\n    tls_config:\n      server_name: example.com\n  tcp_client_auth:\n    prober: tcp\n    tls_config:\n      ca_file: /etc/tls/ca.crt\n      cert_file: /etc/tls/tls.crt\n      key_file: /etc/tls/tls.key\n  tcp_smtp_starttls:\n    prober: tcp\n    tcp:\n      starttls: smtp\n  file:\n    prober: file\n  kubernetes:\n    prober: kubernetes\n  kubernetes_kubeconfig:\n    prober: kubernetes\n    kubernetes:\n      kubeconfig: /root/.kube/config\n  kubeconfig:\n    prober: kubeconfig\n"` |  |
| config.enabled | bool | `false` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ribbybibby/ssl-exporter"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| logLevel | string | `"info"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `100` |  |
| rbac.enabled | bool | `true` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| service.port | int | `9219` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |