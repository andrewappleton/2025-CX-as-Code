resource "genesyscloud_tf_export" "exporter" {
  directory = "gcexport"
  include_filter_resources = [ 
    "genesyscloud_architect_datatable::${var.CUST_PREFIX}datatable",
    "genesyscloud_architect_datatable_row::${var.CUST_PREFIX}datatable_"
  ]
  split_files_by_resource = true
  log_permission_errors = true
  include_state_file = true
  export_as_hcl = true
}

