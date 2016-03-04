#!/usr/bin/env bash
{ set +x; } 2>/dev/null

# https://chrome.google.com/webstore/detail/adblock-for-youtube/cmedhionkhpnakcndndgjdbohmhepckk
URL="https://chrome.google.com/webstore/detail/cmedhionkhpnakcndndgjdbohmhepckk"
url="$(curl -w "%{url_effective}\n" -I -L -s -S $URL -o /dev/null)"
IFS='/';set $url;IFS=
echo ${6//\-/ }
