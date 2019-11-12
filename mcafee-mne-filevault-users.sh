#!/bin/sh

## mcafee-mne-filevault-users.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac

MNEUsers=`/usr/local/McAfee/MNE/MNEMacTool -u`

echo '<result>'$MNEUsers'</result>'