{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "default-resources.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "default-resources.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "default-resources.labels" -}}
app.kubernetes.io/name: {{ include "default-resources.name" . }}
helm.sh/chart: {{ include "default-resources.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
