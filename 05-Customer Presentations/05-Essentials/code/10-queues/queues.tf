locals {
    queues = csvdecode(file("${path.module}/queues.csv"))
    lobs = split(",",var.LOBS)
}

data "genesyscloud_auth_division" "division" {
  name = "${var.ORG_DIVISION}"
}

data "genesyscloud_routing_wrapupcode" "wucs" {
  count = length(local.lobs)
  name = format("%s%s",var.CUST_PREFIX,local.lobs[count.index])
}

resource "genesyscloud_routing_queue" "queues" {
    division_id = data.genesyscloud_auth_division.division.id
    count = length(local.queues)
    name = format("%s%s",var.CUST_PREFIX,local.lobs[count.index])
    description = format("Description for %s Queue.",local.lobs[count.index])
    acw_wrapup_prompt   = local.queues[count.index].acw_wrapup_prompt 
    acw_timeout_ms      = local.queues[count.index].acw_timeout_ms
    auto_answer_only = local.queues[count.index].auto_answer_only
    wrapup_codes = [
      for wuc in data.genesyscloud_routing_wrapupcode.wucs:
        wuc.id
    ]
}