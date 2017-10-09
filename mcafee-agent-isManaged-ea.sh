#!/bin/sh

## mcafee-agent-isManaged-ea.sh
## version 1.1
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Agent 5.x
# Data Type: String
# Display: Extension Attributes

isManaged=`sudo /Library/McAfee/agent/bin/cmdagent -i | grep GUID | cut -c 7-43`

if [ $isManaged != "N/A" ]; then
result="Managed"
else
result="Unmanaged"
fi
echo '<result>'$result'</result>'