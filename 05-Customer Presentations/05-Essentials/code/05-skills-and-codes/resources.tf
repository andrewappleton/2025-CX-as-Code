# Create Skills
locals {
  lobs = split(",",var.LOBS)
}

resource "genesyscloud_routing_skill" "skilllob0" {
  name = "${var.CUST_PREFIX}${local.lobs[0]}"
}
resource "genesyscloud_routing_skill" "skilllob1" {
  name = "${var.CUST_PREFIX}${local.lobs[1]}"
}
resource "genesyscloud_routing_skill" "skilllob2" {
  name = "${var.CUST_PREFIX}${local.lobs[2]}"
}
resource "genesyscloud_routing_skill" "skilllob3" {
  name = "${var.CUST_PREFIX}${local.lobs[3]}"
}

# Create Wrapup Codes
resource "genesyscloud_routing_wrapupcode" "wuclob0" {
    name = "${var.CUST_PREFIX}${local.lobs[0]}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob1" {
    name = "${var.CUST_PREFIX}${local.lobs[1]}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob2" {
    name = "${var.CUST_PREFIX}${local.lobs[2]}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob3" {
    name = "${var.CUST_PREFIX}${local.lobs[3]}"
}