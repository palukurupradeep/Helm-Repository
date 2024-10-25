{{/*
Selector labels
*/}}
{{- define "mychart.selectorLabels" -}}
app: {{ .Values.podLabels.app }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mychart.labels" -}}
{{ include "mychart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
