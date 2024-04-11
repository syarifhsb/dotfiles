#!/bin/sh

# Statusbar loop
while true; do
  cap1=$(cat /sys/class/power_supply/BAT0/capacity)
  cap2=$(cat /sys/class/power_supply/BAT1/capacity)
  cap=$((($cap1 + $cap2)/2))
  if [ $cap -gt 90 ]; then
    batlog=
  elif [ $cap -gt 65 ]; then
    batlog=
  elif [ $cap -gt 35 ]; then
    batlog=
  elif [ $cap -gt 10 ]; then
    batlog=
  else
    batlog=
  fi

  netw=$(nmcli -g IN-USE,SSID,BARS,SIGNAL dev wifi list | grep '^*')
  ssid=$(echo $netw | awk 'BEGIN{FS=":"}{print $2}')
  signal=$(echo $netw | awk 'BEGIN{FS=":"}{print $4}')
  bars=$(echo $netw | awk 'BEGIN{FS=":"}{print $3}')
  if [ "$bars" == "****" ]; then
    bars=▂▄▆█
  elif [ "$bars" == "*** " ]; then
    bars=▂▄▆_
  elif [ "$bars" == "** " ]; then
    bars=▂▄__
  elif [ "$bars" == "* " ]; then
    bars=▂___
  else
    bars=____
  fi

  if [ -z "$ssid" ] ; then
    wifi="no cnx"
  else
    wifi="$ssid $bars $signal"
  fi

  xsetroot -name "| $wifi | $batlog $cap% | $( date +"%a %d/%b/%y %R |" )"
  sleep 15s
done &

