{{/*
Expand the name of the chart.
*/}}
{{- define "backend-chart.name" -}}
python-app
{{- end -}}

{{/*
Generate the fullname of the chart.
*/}}
{{- define "backend-chart.fullname" -}}
{{ .Release.Name }}-{{ include "backend-chart.name" . }}
{{- end -}}

{{/*
Common labels.
*/}}
{{- define "backend-chart.labels" -}}
helm.sh/chart: {{ include "backend-chart.name" . }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ include "backend-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
