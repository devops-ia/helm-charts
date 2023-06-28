# azure-prometheus-config

A Helm chart to configure Azure Managed Prometheus

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
helm install [RELEASE_NAME] devops-ia/azure-prometheus-config
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
helm show values devops-ia/azure-prometheus-config
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| amaMetricsPrometheusConfig.config | string | `"global:\n  scrape_interval: 15s\nscrape_configs:\n- job_name: <your scrape job here>\n- job_name: <your scrape job here>\n"` |  |
| amaMetricsPrometheusConfig.enabled | bool | `false` |  |
| amaMetricsPrometheusConfigNode.config | string | `"global:\n  scrape_interval: 15s\nscrape_configs:\n- job_name: <your scrape job here>\n- job_name: <your scrape job here>\n"` |  |
| amaMetricsPrometheusConfigNode.enabled | bool | `false` |  |
| amaMetricsPrometheusConfigNodeWindows.config | string | `"global:\n  scrape_interval: 15s\nscrape_configs:\n- job_name: kubelet\n  scheme: https\n  metrics_path: /metrics\n  scrape_interval: 30s\n  label_limit: 63\n  label_name_length_limit: 511\n  label_value_length_limit: 1023\n  tls_config:\n    ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt\n    insecure_skip_verify: true\n  bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token\n  relabel_configs:\n  - source_labels: [__metrics_path__]\n    regex: (.*)\n    target_label: metrics_path\n  - source_labels: [__address__]\n    replacement: '$NODE_NAME'\n    target_label: instance\n  - source_labels: [__address__]\n    replacement: '$OS_TYPE'\n    target_label: \"kubernetes_io_os\"\n  static_configs:\n  - targets: ['$NODE_IP:10250']\n"` |  |
| amaMetricsPrometheusConfigNodeWindows.enabled | bool | `false` |  |
| amaMetricsSettingsConfigmap.config.config-version | string | `"ver1"` |  |
| amaMetricsSettingsConfigmap.config.debug-mode | string | `"enabled = false"` |  |
| amaMetricsSettingsConfigmap.config.default-scrape-settings-enabled | string | `"kubelet = true\ncoredns = false\ncadvisor = true\nkubeproxy = false\napiserver = false\nkubestate = true\nnodeexporter = true\nwindowsexporter = false\nwindowskubeproxy = false\nkappiebasic = true\nprometheuscollectorhealth = false"` |  |
| amaMetricsSettingsConfigmap.config.default-targets-metrics-keep-list | string | `"kubelet = \"\"\ncoredns = \"\"\ncadvisor = \"\"\nkubeproxy = \"\"\napiserver = \"\"\nkubestate = \"\"\nnodeexporter = \"\"\nwindowsexporter = \"\"\nwindowskubeproxy = \"\"\npodannotations = \"\"\nkappiebasic = \"\"\nminimalingestionprofile = true"` |  |
| amaMetricsSettingsConfigmap.config.default-targets-scrape-interval-settings | string | `"kubelet = \"30s\"\ncoredns = \"30s\"\ncadvisor = \"30s\"\nkubeproxy = \"30s\"\napiserver = \"30s\"\nkubestate = \"30s\"\nnodeexporter = \"30s\"\nwindowsexporter = \"30s\"\nwindowskubeproxy = \"30s\"\nkappiebasic = \"30s\"\nprometheuscollectorhealth = \"30s\"\npodannotations = \"30s\""` |  |
| amaMetricsSettingsConfigmap.config.pod-annotation-based-scraping | string | `"podannotationnamespaceregex = \"\""` |  |
| amaMetricsSettingsConfigmap.config.prometheus-collector-settings | string | `"cluster_alias = \"\""` |  |
| amaMetricsSettingsConfigmap.config.schema-version | string | `"v1"` |  |
| amaMetricsSettingsConfigmap.enabled | bool | `false` |  |