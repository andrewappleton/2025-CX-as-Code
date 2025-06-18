# Archy
This demo consists of a number of shell scripts to run resulting in a voice flow being exported from the source environment and imported into the destination environment.

Show the examples in the following order:  
First make sure the flow is created by applying the scripts in `99-setup/flow/voice-flow.sh`  
`00-export-flow-i3.sh` - Exports the flow in i3 format  
`05-export-flow-yaml.sh` - Exports flow in YAML format  
`10-import-flow.sh` - This will fail due to the difference in available voices in the two environments  
    At this point, explain the problem about voice used in source not being available in dest.  
    Show the YAML to indicate the problem, along with showing the available voices in each Org.  
`10.2-fixit.sh` - run this to place the `{{voice_name}}` substitute into the existing flow YAML.  
    Show the update made by the `sed` command  
    Review the `99-options.yaml` file to show how substutions work  
`10.5-import-flow.sh` - Now run this file to properly import the flow   