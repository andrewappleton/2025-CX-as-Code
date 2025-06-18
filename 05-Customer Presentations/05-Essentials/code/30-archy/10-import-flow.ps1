$env:VERSION="_v1-0.yaml"
archy create `
    --recreate `
    --file ./exports/$env:TF_VAR_ARCHY_VOICE_FLOW_NAME$env:VERSION `
    --clientId $env:TF_VAR_DEST_CLIENTID `
    --clientSecret $env:TF_VAR_DEST_CLIENTSECRET `
    --location $env:TF_VAR_ARCHY_DEST_REGION