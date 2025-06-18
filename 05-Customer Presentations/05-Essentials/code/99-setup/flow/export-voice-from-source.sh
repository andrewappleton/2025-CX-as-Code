VERSION=_v1-0.yaml
archy export \
    --flowType $TF_VAR_ARCHY_VOICE_FLOW_TYPE \
    --flowName $TF_VAR_ARCHY_VOICE_FLOW_NAME \
    --exportType "yaml" \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET  \
    --location $TF_VAR_ARCHY_SOURCE_REGION \
    --force \
    --outputDir .