VERSION=_v1-0.yaml
archy publish \
    --clientId $TF_VAR_DEST_CLIENTID \
    --clientSecret $TF_VAR_DEST_CLIENTSECRET \
    --location $TF_VAR_ARCHY_DEST_REGION \
    --recreate \
    --file $TF_VAR_ARCHY_VOICE_FLOW_NAME$VERSION 


