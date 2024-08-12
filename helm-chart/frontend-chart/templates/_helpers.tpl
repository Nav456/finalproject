{{/*
Expand the name of the chart.
*/}}
{{- define "frontend-chart.name" -}}
frontend-ui
{{- end -}}

{{/*
Generate the fullname of the chart.
*/}}
{{- define "frontend-chart.fullname" -}}
{{ .Release.Name }}-{{ include "frontend-chart.name" . }}
{{- end -}}

{{/*
Common labels.
*/}}
{{- define "frontend-chart.labels" -}}
helm.sh/chart: {{ include "frontend-chart.name" . }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ include "frontend-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
