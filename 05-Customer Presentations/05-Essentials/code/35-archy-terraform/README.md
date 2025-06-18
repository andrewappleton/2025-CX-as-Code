# Archy Terraform
This example shows that Archy is only really needed for the purpose of automating exports.  Imports can all be done within Terraform as long as the exported flow is in YAML format.  The advantage being that one can also export all other dependencies along with the flow.

This example will also show managing an Archy flow within Terraform by using the `null_resource/local-exec` methods of HCL.

The example shows an import of a flow, creation of a queue that will be assigned in the flow, and then creation of email route and outbound email address on the queue.

