resource "genesyscloud_architect_datatable_row" "CXaC_Datatable_2" {
  key_value       = "2"
  properties_json = jsonencode({
		"Active": true,
		"Age": 70,
		"Balance": 21.12,
		"FName": "Geddy",
		"LName": "Lee"
	})
  datatable_id    = "${genesyscloud_architect_datatable.CXaC_Datatable.id}"
}

resource "genesyscloud_architect_datatable_row" "CXaC_Datatable_3" {
  key_value       = "3"
  properties_json = jsonencode({
		"Active": true,
		"Age": 21,
		"Balance": 100,
		"FName": "Andrew",
		"LName": "Appleton"
	})
  datatable_id    = "${genesyscloud_architect_datatable.CXaC_Datatable.id}"
}

resource "genesyscloud_architect_datatable_row" "CXaC_Datatable_1" {
  datatable_id    = "${genesyscloud_architect_datatable.CXaC_Datatable.id}"
  key_value       = "1"
  properties_json = jsonencode({
		"Active": true,
		"Age": 80,
		"Balance": 29.00,
		"FName": "Tom",
		"LName": "Waits"
	})
}


