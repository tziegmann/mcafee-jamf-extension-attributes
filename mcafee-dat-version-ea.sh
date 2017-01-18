#!/bin/sh

## mcafee-dat-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

datver=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware.plist Update_DATVersion | cut -b 1-4`

echo "<result>$datver</result>"