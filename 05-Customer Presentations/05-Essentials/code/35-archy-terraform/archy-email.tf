locals {
    sourcedir="./source"
    destdir="./dest"
    filesha = filesha256("${local.sourcedir}/${var.ARCHY_EMAIL_FLOW_FILENAME}")
    archycmd = join(" ",[
        "archy export --clientId ${var.SOURCE_CLIENTID}",
        "--clientSecret ${var.SOURCE_CLIENTSECRET}",
        "--location ${var.ARCHY_SOURCE_REGION}",
        "--force",
        "--exportType yaml",
        "--flowName ${var.ARCHY_EMAIL_FLOW_NAME}",
        "--flowType ${var.ARCHY_EMAIL_FLOW_TYPE}",
        "--outputDir ${local.sourcedir}"       
    ])
}

data "genesyscloud_auth_division" "ref_division" {
  name = "${var.ORG_DIVISION}"
}

data "genesyscloud_routing_email_domain" "ref_emaildomain" {
  name = "${var.EMAIL_DOMAIN}"
}

resource "genesyscloud_routing_email_route" "ref_route" {
  reply_email_address {
    domain_id = data.genesyscloud_routing_email_domain.ref_emaildomain.id
    self_reference_route = true
  }
  domain_id = data.genesyscloud_routing_email_domain.ref_emaildomain.id
  from_name = "${var.EMAIL_FROM}"
  pattern = "${var.EMAIL_PATTERN}"
  flow_id = genesyscloud_flow.ref_flow.id
}

resource "genesyscloud_routing_queue_outbound_email_address" "ref_obemail" {
  queue_id = genesyscloud_routing_queue.ref_queue.id
  domain_id = data.genesyscloud_routing_email_domain.ref_emaildomain.id
  route_id = genesyscloud_routing_email_route.ref_route.id
}

resource "genesyscloud_routing_queue" "ref_queue" {
  division_id = data.genesyscloud_auth_division.ref_division.id
  name = "${var.EMAIL_QUEUE}"
  acw_timeout_ms = 5000
}

resource "genesyscloud_flow" "ref_flow" {
  depends_on = [ 
    genesyscloud_routing_queue.ref_queue
   ]
  filepath = "${local.sourcedir}/${var.ARCHY_EMAIL_FLOW_FILENAME}"
  file_content_hash = "${local.filesha}"
  substitutions = {
    queue_name = "${var.EMAIL_QUEUE}",
    flow_name = "${var.ARCHY_EMAIL_FLOW_NAME}"
  }
}

resource "genesyscloud_tf_export" "ref_export" {
  depends_on = [ 
    genesyscloud_routing_queue_outbound_email_address.ref_obemail,
    genesyscloud_flow.ref_flow,
    genesyscloud_routing_email_route.ref_route,
    genesyscloud_routing_queue.ref_queue
  ]
  directory = "./dest"
  export_as_hcl = true
  include_state_file = false
  log_permission_errors = true
  split_files_by_resource = true
  ignore_cyclic_deps = true
  include_filter_resources = [
    "genesyscloud_flow::${var.ARCHY_EMAIL_FLOW_NAME}",
    "genesyscloud_routing_queue::${var.EMAIL_QUEUE}"
  ]
}

resource "null_resource" "ref_archy" {
  depends_on = [ genesyscloud_flow.ref_flow ]
  provisioner "local-exec" {
    when = create
    command = local.archycmd
    on_failure = fail
    quiet = true
  }
}