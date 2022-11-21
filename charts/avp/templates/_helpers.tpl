{{- define "serviceAccountName" -}}
{{- printf "%s-%s-%s" .Values.project .Values.appName "service-account" -}}
{{- end -}}

{{- define "sercretName" -}}
{{- printf "%s-%s-%s" .Values.project .Values.appName "secret" -}}
{{- end -}}

{{- define "cadsecrets" -}}
{{ $azkeyvault := .Values.keyVault }}
{{- range $key, $value := .Values.secrets -}}
{{- printf "%s: \"<path:%s#%s | base64encode>\"\n" $key $azkeyvault $value -}}
{{- end -}}
{{- end -}}