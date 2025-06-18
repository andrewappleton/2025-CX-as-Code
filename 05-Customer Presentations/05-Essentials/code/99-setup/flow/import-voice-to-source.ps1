$env:VERSION="_v1-0.yaml"
archy create `
    --clientId $env:TF_VAR_SOURCE_CLIENTID `
    --clientSecret $env:TF_VAR_SOURCE_CLIENTSECRET `
    --location $env:TF_VAR_ARCHY_SOURCE_REGION `
    --recreate `
    --forceUnlock `
    --file $env:TF_VAR_ARCHY_VOICE_FLOW_NAME$env:VERSION