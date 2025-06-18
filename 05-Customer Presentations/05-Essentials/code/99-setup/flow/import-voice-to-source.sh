VERSION=_v1-0.yaml
archy create \
    --clientId $TF_VAR_SOURCE_CLIENTID \
    --clientSecret $TF_VAR_SOURCE_CLIENTSECRET \
    --location $TF_VAR_ARCHY_SOURCE_REGION \
    --recreate \
    --forceUnlock \
    --file $TF_VAR_ARCHY_VOICE_FLOW_NAME$VERSION