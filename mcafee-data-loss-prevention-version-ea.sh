#!/bin/sh

## mcafee-data-loss-prevention-version-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Endpoint Security 10 for Mac

DLPeVersion=`awk -F "[><]" '/BuildNumber/{print $3}' /usr/Local/McAfee/DlpAgent/Version`

echo '<result>'$DLPeVersion'</result>'