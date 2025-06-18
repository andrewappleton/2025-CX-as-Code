resource "genesyscloud_architect_datatable" "CXaC_Datatable" {
  properties {
    name  = "key"
    title = "ID"
    type  = "string"
  }
  properties {
    name  = "FName"
    title = "FName"
    type  = "string"
  }
  properties {
    name  = "LName"
    title = "LName"
    type  = "string"
  }
  properties {
    title   = "Active"
    type    = "boolean"
    default = "true"
    name    = "Active"
  }
  properties {
    name  = "Age"
    title = "Age"
    type  = "integer"
  }
  properties {
    default = "0"
    name    = "Balance"
    title   = "Balance"
    type    = "number"
  }
  description = "Simple datatable used for demonstrating CX as Code"
  name        = "CXaC_Datatable"
}


