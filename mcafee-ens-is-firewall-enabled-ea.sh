#!/bin/sh

## mcafee-is-firewall-enabled-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

#Check to see if McAfee Firewall is installed
if [ -f "/Library/Preferences/com.mcafee.ssm.StatefulFirewall.plist" ]; then
result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.StatefulFirewall IsFirewallEnabled`
fi

if [ "$result" = "1" ]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Disabled</result>"
fi