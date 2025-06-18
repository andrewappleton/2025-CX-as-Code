gc.exe flows list -a `
    --transform archy-ps-flow-export.tmpl `
    --clientid $env:TF_VAR_SOURCE_CLIENTID `
    --clientsecret $env:TF_VAR_SOURCE_CLIENTSECRET `
    --environment $env:TF_VAR_ARCHY_SOURCE_REGION `
    | Tee-Object -FilePath "99-export_archy_flows.ps1"