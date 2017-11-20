#!/bin/sh

## mcafee-agent-GUID-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Agent 5.x
# Data Type: String
# Display: Extension Attributes

agentGUID=`sudo /Library/McAfee/agent/bin/cmdagent -i | grep GUID | cut -c 7-43`

echo '<result>'$agentGUID'</result>'