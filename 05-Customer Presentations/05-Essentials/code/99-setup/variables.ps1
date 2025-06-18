# Needed for ad-hoc use of GC command-line
$env:GENESYSCLOUD_OAUTHCLIENT_ID="<client-id>"                                                                                       
$env:GENESYSCLOUD_OAUTHCLIENT_SECRET="<client-secret>"
$env:GENESYSCLOUD_REGION="<region>"

# Prefacing all variables as Terraform Env Vars as the 
# Archy variables are used both in command line and Terraform HCL scripts...
$env:TF_VAR_SOURCE_CLIENTID="<source-client-id>"                  # Source OAuth Client ID
$env:TF_VAR_SOURCE_CLIENTSECRET="<source-client-secret>"          # Source OAuth Client Secret
$env:TF_VAR_SOURCE_AWSREGION="<source-region>"                    # Source AWS Region (see below)
$env:TF_VAR_DEST_CLIENTID="<dest-client-id>"                      # Dest OAuth Client ID
$env:TF_VAR_DEST_CLIENTSECRET="<dest-client-secret>"              # Dest OAuth Client Secret
$env:TF_VAR_DEST_AWSREGION="<dest-region>"                        # Dest AWS Region (see below)
$env:TF_VAR_CUST_PREFIX="GSYS_"                                   # Prefix to use with Customer Resources
$env:TF_VAR_CUST_SUFFIX="_Dev"                                    # Suffix to use
$env:TF_VAR_LOBS="Default,Support,Payments,NewClients"            # 4 Lines of business - keep at 4
$env:TF_VAR_ARCHY_SOURCE_REGION="<source-region>"                 # Archy source region (see below)
$env:TF_VAR_ARCHY_DEST_REGION="<dest-region>"                     # Archy dest region (see below)
$env:TF_VAR_ARCHY_VOICE_FLOW_NAME="<name-of-flow>"                # Flow name for voice flow
$env:TF_VAR_ARCHY_VOICE_FLOW_TYPE="<flow-type>"                   # Flow type (inboundcall)
$env:TF_VAR_ARCHY_VOICE_FLOW_FILENAME="<file-name-for-flow>"      # Flow filename for inbound voice flow
$env:TF_VAR_ARCHY_EMAIL_FLOW_FILENAME="<file-name-for-flow>"      # Flow filename for inbound email flow
$env:TF_VAR_ARCHY_EMAIL_FLOW_NAME="<name-of-flow>"                # Name of inbound email flow in Architect
$env:TF_VAR_ARCHY_EMAIL_FLOW_TYPE="<flow-type>"                   # Flow type (inboundemail)
$env:TF_VAR_ORG_DIVISION="<division-to-use>"                      # Division in Cloud
$env:TF_VAR_EMAIL_DOMAIN="<email-domain-name>"                    # Pre-configured email domain (due to limited availability)
$env:TF_VAR_EMAIL_FROM="<email-from-name>"                        # Email from name (plain text, i.e. 'CXaC User')
$env:TF_VAR_EMAIL_PATTERN="<email-pattern>"                       # Email address (i.e. cxac.user)
$env:TF_VAR_EMAIL_QUEUE="<email-queue>"                           # Email Queue to create
# Next variable is required for setting outbound email address on queue...
$env:ENABLE_STANDALONE_EMAIL_ADDRESS=$true
# AWS region	                AWS region name	    Region in Genesys Cloud login	Archy Location        
# US East (N. Virginia)	        us-east-1	        Americas (US East)	            mypurecloud.com       
# US East 2 (Ohio)*             us-east-2	        FedRAMP	                        use2.us-gov-pure.cloud
# US West (Oregon)	            us-west-2	        Americas (US West)	            usw2.pure.cloud       
# Canada (Central)	            ca-central-1	    Americas (Canada)	            cac1.pure.cloud       
# South America (São Paulo)	    sa-east-1	        Americas (São Paulo)	        sae1.pure.cloud       
# Europe (Frankfurt)	        eu-central-1	    EMEA (Frankfurt)	            mypurecloud.de        
# Europe (Ireland)	            eu-west-1	        EMEA (Dublin)	                mypurecloud.ie        
# Europe (London)	            eu-west-2	        EMEA (London)	                euw2.pure.cloud       
# Europe (Zurich)	            eu-central-2	    EMEA (Zurich)                   euc2.pure.cloud       
# Middle East  (UAE)	        me-central-1	    EMEA (UAE)	                    mec1.pure.cloud       
# Asia Pacific (Mumbai)	        ap-south-1	        Asia Pacific (Mumbai)	        aps1.pure.cloud       
# Asia Pacific (Seoul)	        ap-northeast-2	    Asia Pacific (Seoul)	        apne2.pure.cloud      
# Asia Pacific (Sydney)	        ap-southeast-2	    Asia Pacific (Sydney)	        mypurecloud.com.au    
# Asia Pacific (Tokyo)	        ap-northeast-1	    Asia Pacific (Tokyo)	        mypurecloud.jp        
# Asia Pacific (Osaka)	        ap-northeast-3      Asia Pacific (Osaka)            apne3.pure.cloud      
