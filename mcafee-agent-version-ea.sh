#!/bin/sh

## mcafee-agent-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

Version=`cat /etc/cma.d/EPOAGENT3700MACX/config.xml | egrep "<Version>.*</Version>" |sed -e "s/<Version>\(.*\)<\/Version>/\1/"|tr -d " "`

echo '<result>'$Version'</result>'