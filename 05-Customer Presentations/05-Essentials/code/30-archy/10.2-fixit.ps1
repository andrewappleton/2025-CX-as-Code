$env:VERSION="_v1-0.yaml"
(Get-Content `
    -ReadCount 0 `
    exports\$env:TF_VAR_ARCHY_VOICE_FLOW_NAME$env:VERSION) `
    -replace 'Ellene','"{{voice_name}}"' | `
    Set-Content exports\CXaC_VoiceInbound_v1-0.yaml


