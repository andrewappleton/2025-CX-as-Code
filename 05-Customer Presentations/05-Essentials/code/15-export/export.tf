resource "genesyscloud_tf_export" "export" {
    directory       = "gcexport"
    include_state_file = false
    export_as_hcl = true
    split_files_by_resource = true
    log_permission_errors = true
    # ignore_cyclic_deps = true
    # enable_dependency_resolution = false

    # Run #1 - usually avoid this in demo as it could take a long
    # time depending on how heavily used the environment is!
    include_filter_resources = []
    # Run #2 - Uncomment Run #2, comment Run #1
    # include_filter_resources = [
    #     "genesyscloud_routing_queue",
    #     "genesyscloud_routing_skill",
    #     "genesyscloud_routing_wrapupcode"
    # ]
    # Run #3 - Comment Run #2, uncomment Run #3
    # include_filter_resources = [
    #     "genesyscloud_routing_skill::^${var.CUST_PREFIX}",
    #     "genesyscloud_routing_wrapupcode::^${var.CUST_PREFIX}",
    #     "genesyscloud_routing_queue::^${var.CUST_PREFIX}"
    # ]
    # Run #4 - leave Run #3 uncommented, uncomment below lines...
    # exclude_attributes = [
    #     "genesyscloud_routing_queue.media_settings_call",
    #     "genesyscloud_routing_queue.media_settings_callback",
    #     "genesyscloud_routing_queue.media_settings_chat",
    #     "genesyscloud_routing_queue.media_settings_email",
    #     "genesyscloud_routing_queue.media_settings_message",
    #     "genesyscloud_routing_queue.description"
    # ]
}

