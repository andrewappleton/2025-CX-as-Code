resource "genesyscloud_tf_export" "export" {
  directory = "./gcexport"
  include_state_file = true
  export_as_hcl = true
  split_files_by_resource = true
  log_permission_errors = true
  include_filter_resources = [
    "genesyscloud_architect_datatable::CXaC_Datatable",
    "genesyscloud_architect_datatable_row::CXaC_Datatable"
  ]
}