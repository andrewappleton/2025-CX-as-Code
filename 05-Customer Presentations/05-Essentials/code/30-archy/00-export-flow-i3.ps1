archy export `
    --force `
    --clientId $env:TF_VAR_SOURCE_CLIENTID `
    --clientSecret $env:TF_VAR_SOURCE_CLIENTSECRET `
    --location $env:TF_VAR_ARCHY_SOURCE_REGION `
    --flowName $env:TF_VAR_ARCHY_VOICE_FLOW_NAME `
    --flowType $env:TF_VAR_ARCHY_VOICE_FLOW_TYPE `
    --outputDir exports