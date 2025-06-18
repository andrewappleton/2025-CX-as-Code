gc routing queues list -a \
    --transform ./archy-queue-transform.tmpl \
    --clientid $TF_VAR_SOURCE_CLIENTID \
    --clientsecret $TF_VAR_SOURCE_CLIENTSECRET \
    --environment $TF_VAR_ARCHY_SOURCE_REGION 