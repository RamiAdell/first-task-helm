{{- define "myapp.containerResources" -}}
resources:
  limits:
    cpu: {{ .Values.resources.limits.cpu | quote }}
    memory: {{ .Values.resources.limits.memory | quote }}
{{- if .Values.resources.requests }}
  requests:
{{- if .Values.resources.requests.cpu }}
    cpu: {{ .Values.resources.requests.cpu | quote }}
{{- end }}
{{- if .Values.resources.requests.memory }}
    memory: {{ .Values.resources.requests.memory | quote }}
{{- end }}
{{- end }}
{{- end }}