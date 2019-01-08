#!/bin/sh
version=$(awk -F "<|>" '/FMVersion/ {print $3}' /usr/local/McAfee/fmp/config/FRP/FMConfig.xml)
echo "<result>${version:-Not Installed}</result>"
