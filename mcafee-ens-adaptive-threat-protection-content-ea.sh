#!/bin/sh

## mcafee-ens-adaptive-threat-protection-content-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, McAfee Professional Services
## E-Mail: Tom_Ziegmann@McAfee.com

# This script has been verified to work on McAfee Endpoint Security 10 for Mac

JTIContent=`cat /usr/local/McAfee/JTIContent/var/JTIContentVersion | grep JTI_CONTENT_VERSION | cut -c 21-29`

echo '<result>'$JTIContent'</result>'