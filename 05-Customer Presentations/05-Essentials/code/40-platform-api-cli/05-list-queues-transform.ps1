gc.exe routing queues list -a `
    --transform archy-queue-transform.tmpl `
    --clientid $env:TF_VAR_SOURCE_CLIENTID `
    --clientsecret $env:TF_VAR_SOURCE_CLIENTSECRET `
    --environment $env:TF_VAR_ARCHY_SOURCE_REGION 