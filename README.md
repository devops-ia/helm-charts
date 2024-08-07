# helm-charts

Create custom Helm charts and improve community charts

## Usage

```console
helm repo add devops-ia https://devops-ia.github.io/helm-charts
```

You can then run `helm search repo devops-ia` to see the charts.

## Charts

| Chart | Description |
|-------|-------------|
| [azure-prometheus-config](./charts/azure-prometheus-config) | A Helm chart to configure Azure Managed Prometheus |
| [bigquery-exporter](./charts/bigquery-exporter) | A Helm chart to deploy Bigquery Exporter |
| [bitbucket-bot](./charts/bitbucket-bot) | A Helm chart to deploy Bitbucket Bot for Google Chats (Spaces) |
| [default-resources](./charts/default-resources) | A Helm chart for Default Resources |
| [ecr-registry](./charts/ecr-registry) | CronJob to update Amazon Elastic Container Registry credentials |
| [helm-release-cleaner](./charts/helm-release-cleaner) | A Helm chart for Helm Charts to clean up the releases installed in the declared namespaces |
| [snapshot-controller](./charts/snapshot-controller) | A Helm chart to deploy snapshot-controller |
| [splunk](./charts/splunk) | A Helm chart to deploy Splunk standalone |
| [ssl-exporter](./charts/ssl-exporter) | A Helm Chart to SSL Certificate Exporter for Prometheus |
