#!/bin/bash
#Script to trigger a Phillips Hue Light Loop (purple and blue)
/usr/bin/curl -H "Accept: application/json" -X PUT --data '{"on":true, "sat":254, "bri":254,"hue":60000}' http://<bridge-ip>/api/<key here>/lights/36/state > /dev/null 2>&1
sleep 1
/usr/bin/curl -H "Accept: application/json" -X PUT --data '{"on":true, "sat":254, "bri":254,"hue":50000}' http://<bridge-ip>/api/<key here>/lights/36/state > /dev/null 2>&1
sleep 1
#crude but repeat the four lines before this as many times as you need to blink the lights
