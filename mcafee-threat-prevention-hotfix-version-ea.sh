#!/bin/sh

## mcafee-threat-prevention-hotfix-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Endpoint Security 10 for Mac

AMHotfix=`cat /usr/local/McAfee/AntiMalware/var/HFSP-Version.xml | egrep "<Version0>.*</Version0>" |sed -e "s/<Version0>\(.*\)<\/Version0>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`

echo '<result>'$AMHotfix'</result>'