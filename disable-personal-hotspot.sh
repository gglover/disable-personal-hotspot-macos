#!/bin/bash

# Replace this with your personal hotspot name as it appears in your wifi list.
# ex. "Gus's iPhone"
PERSONAL_HOTSPOT="<YOUR PERSONAL HOTSPOT NAME>"

AIRPORT="en0"
CURRENT_SSID=$(/usr/sbin/networksetup -getairportnetwork "$AIRPORT" 2>/dev/null | awk -F': ' '{print $2}')

if [[ "$CURRENT_SSID" == "$PERSONAL_HOTSPOT" ]]; then
  /usr/sbin/networksetup -setairportpower "$AIRPORT" off
fi