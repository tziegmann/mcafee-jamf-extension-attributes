#!/bin/sh

## mcafee-ens-adaptive-threat-protection-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Endpoint Security 10 for Mac

Version=`cat /etc/cma.d/ENDPATP_1050MACX/config.xml | egrep "<Version>.*</Version>" |sed -e "s/<Version>\(.*\)<\/Version>/\1/"|tr -d " "`

echo '<result>'$Version'</result>'