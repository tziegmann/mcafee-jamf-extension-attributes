#!/bin/sh

## mcafee-is-firewall-enabled-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

#Check to see if McAfee Security is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.StatefulFirewall.plist" ]; then
result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.StatefulFirewall IsFirewallEnabled`
fi

if [ "$result" = "1" ]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Disabled</result>"
fi