#!/bin/sh

## mcafee-threat-prevention-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac

FMPVersion=`cat /usr/local/McAfee/fmp/config/FMPInfo.xml | egrep "<FMPVersion>.*</FMPVersion>" |sed -e "s/<FMPVersion>\(.*\)<\/FMPVersion>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`
BuildNumber=`cat /usr/local/McAfee/fmp/config/FMPInfo.xml | egrep "<BuildNumber>.*</BuildNumber>" |sed -e "s/<BuildNumber>\(.*\)<\/BuildNumber>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`

TPVersion="$FMPVersion.$BuildNumber"
echo '<result>'$TPVersion'</result>'