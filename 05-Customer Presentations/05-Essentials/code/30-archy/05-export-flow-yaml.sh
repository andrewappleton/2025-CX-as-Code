archy export \
    --force \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET \
    --location $TF_VAR_ARCHY_SOURCE_REGION \
    --flowName $TF_VAR_ARCHY_VOICE_FLOW_NAME \
    --flowType $TF_VAR_ARCHY_VOICE_FLOW_TYPE \
    --exportType yaml \
    --outputDir ./exports

    