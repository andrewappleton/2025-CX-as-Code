resource "genesyscloud_tf_export" "export" {
    directory       = "ie-genesysps-import"
    include_state_file = false
    export_as_hcl = true
    split_files_by_resource = true
    include_filter_resources = [
        "genesyscloud_routing_skill::^${var.CUST_PREFIX}",
        "genesyscloud_routing_wrapupcode::^${var.CUST_PREFIX}",
        "genesyscloud_routing_queue::^${var.CUST_PREFIX}"
    ]
    exclude_attributes = [
        "genesyscloud_routing_queue.media_settings_call",
        "genesyscloud_routing_queue.media_settings_callback",
        "genesyscloud_routing_queue.media_settings_chat",
        "genesyscloud_routing_queue.media_settings_email",
        "genesyscloud_routing_queue.media_settings_message",
        "genesyscloud_routing_queue.description"
    ]
}