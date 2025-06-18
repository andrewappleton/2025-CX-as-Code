$env:VERSION="_v1-0.yaml"
archy publish `
    --clientId $env:TF_VAR_DEST_CLIENTID `
    --clientSecret $env:TF_VAR_DEST_CLIENTSECRET `
    --location $env:TF_VAR_ARCHY_DEST_REGION `
    --recreate `
    --file $env:TF_VAR_ARCHY_VOICE_FLOW_NAME$env:VERSION 