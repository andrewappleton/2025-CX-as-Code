locals {
  queues = csvdecode(file("${path.module}/queues.csv"))
}

data "genesyscloud_auth_division" "div" {
  name = "${var.SOURCE_DIVISION}"
}

resource "genesyscloud_routing_queue" "queues" {
  division_id = data.genesyscloud_auth_division.div.id
  count = length(local.queues)
  name = format("%s_%s",var.PREFIX,local.queues[count.index].queue_name)
  description = local.queues[count.index].description
  acw_wrapup_prompt = local.queues[count.index].acw_wrapup_prompt
  auto_answer_only = local.queues[count.index].auto_answer_only  
}