data "genesyscloud_auth_division" "division1" {
    name = "Home"
}
resource "genesyscloud_architect_datatable" "datatable1" {
  division_id = data.genesyscloud_auth_division.division1.id
  name        = "${var.CUST_PREFIX}datatable"
  properties {
    type  = "string"
    name  = "key"
    title = "ID"
  }
  properties {
    name  = "fname"
    title = "First Name"
    type  = "string"
  }
  properties {
    name  = "lname"
    title = "Last Name"
    type  = "string"
  }
  properties {
    name = "xname"
    title = "Twitter/X Name"
    type = "string"
  }
  properties {
    title   = "Active"
    type    = "boolean"
    default = "false"
    name    = "active"
  }
  properties {
    type  = "integer"
    name  = "level"
    title = "Level"
  }
  properties {
    default = "0"
    name    = "balance"
    title   = "Acct. Balance"
    type    = "number"
  }
  description = "Used for demonstrating CXaC Management"
}

resource "genesyscloud_architect_datatable_row" "datatable1_row1" {
  datatable_id    = "${genesyscloud_architect_datatable.datatable1.id}"
  key_value       = "1"
  properties_json = jsonencode({
	  "active" = true,
	  "balance" = 21.12,
	  "fname" = "Andrew",
	  "level" = 1,
      "xname" = "@andrewrappleton",
	  "lname" = "Appleton"
  })
}
resource "genesyscloud_architect_datatable_row" "datatable1_row2" {
  datatable_id    = "${genesyscloud_architect_datatable.datatable1.id}"
  key_value       = "2"
  properties_json = jsonencode({
	  "active" = false,
	  "balance" = 1001.22,
	  "fname" = "Tom",
	  "level" = 9,
	  "lname" = "Waits",
      "xname" = "@tomwaits"
  })
}
