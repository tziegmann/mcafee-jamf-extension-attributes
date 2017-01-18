#!/bin/sh

## mcafee-agent-isManaged-ea.sh
## version 1.1
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

isManaged=`sudo /Library/McAfee/agent/bin/cmdagent -i | grep GUID | cut -c 7-43`

if [ $isManaged != "N/A" ]; then
result="Managed"
else
result="Unmanaged"
fi
echo '<result>'$result'</result>'