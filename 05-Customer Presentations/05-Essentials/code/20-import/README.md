# Import
This example shows how to export from one Org and import into another, setting the stage for CI/CD pipeline tasks.  
The `provider-dest.txt` and `variables-dest.txt` should be copied to the resulting directory after running the export code and renamed from `.txt` to `.tf` before running the `terraform apply` to import these resources into the destination environment.

As we are not using the `enable_dependency_resolution` option in this particular example, we may want to specify the `division` for the target Org.  To do that - 
Add the following updates to the files create: 

`genesyscloud_routing_queues.tf`
```
data "genesyscloud_auth_division" "targetdiv" {
    name = "${var.ORG_DIVISION}"
}
```
In `queues` block, add the following:

`division_id = data.genesyscloud_auth_division.targetdiv.id`

In `variables.tf`
Add following variable definition:
```
variable "ORG_DIVISION" {
    type = string
}
```