#!/bin/bash
#This script is used with Motioneye OS, and triggered from motion
# ---
#call webhook for slack notification
/usr/bin/curl -X POST --data-urlencode "payload={\"channel\": \"#motioneye\", \"username\": \"Horus\", \"text\": \"$(sh /etc/motioneye/slack/alert)\", \"icon_emoji\": \":owl:\"}"  https://hooks.slack.com/services/<rest of url> >> log.log
#send pic to slack
/bin/sh /etc/motioneye/slack/motion-picture &
#trigger hue lights alarm
/etc/motioneye/slack/hue.sh
