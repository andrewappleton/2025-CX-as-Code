terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.50.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = "${var.SOURCE_CLIENTID}"
  oauthclient_secret = "${var.SOURCE_CLIENTSECRET}"
  aws_region = "${var.SOURCE_REGION}"
  sdk_debug = true
}