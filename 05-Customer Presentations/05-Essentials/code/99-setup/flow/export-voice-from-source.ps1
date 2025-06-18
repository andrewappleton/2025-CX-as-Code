$env:VERSION="_v1-0.yaml"
archy export `
    --flowType $env:TF_VAR_ARCHY_VOICE_FLOW_TYPE `
    --flowName $env:TF_VAR_ARCHY_VOICE_FLOW_NAME `
    --exportType "yaml" `
    --clientId $env:TF_VAR_SOURCE_CLIENTID `
    --clientSecret $env:TF_VAR_SOURCE_CLIENTSECRET  `
    --location $env:TF_VAR_ARCHY_SOURCE_REGION `
    --force `
    --outputDir .