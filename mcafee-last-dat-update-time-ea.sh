#!/bin/sh

## mcafee-last-dat-update-time-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

#Check to see if McAfee product is installed and return update time
if [ -f "/Library/Preferences/com.mcafee.ssm.antimalware.plist" ]; then
result=`date -r "$(/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware Update_Last_Update_Time)" "+%Y-%m-%d %H:%M:%S"`
echo "<result>$result</result>"
else
echo "<result>Not installed</result>"
fi