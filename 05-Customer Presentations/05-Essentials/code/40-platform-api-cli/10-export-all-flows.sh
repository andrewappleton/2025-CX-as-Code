gc flows list -a \
    --transform ./archy-sh-flow-export.tmpl \
    --clientid $TF_VAR_SOURCE_CLIENTID \
    --clientsecret $TF_VAR_SOURCE_CLIENTSECRET \
    --environment $TF_VAR_ARCHY_SOURCE_REGION \
    | tee 99-export_archy_flows.sh