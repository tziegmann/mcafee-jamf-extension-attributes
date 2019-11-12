#!/bin/sh

## mcafee-mne-product-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac

FMPVersion=`cat /usr/local/McAfee/fmp/config/MNE/FMConfig.xml | egrep "<FMVersion>.*</FMVersion>" |sed -e "s/<FMVersion>\(.*\)<\/FMVersion>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`

echo '<result>'$FMPVersion'</result>'