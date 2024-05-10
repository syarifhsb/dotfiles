#!/bin/sh

# Statusbar loop
while true; do
  if ! [ $(hostname) == "AX15" ]; then
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

  kbd=$(tglkb query)
  if ! [ $(hostname) == "AX15" ]; then
    xsetroot -name "| $kbd | $wifi | $batlog $cap% | $( date +"%a %d/%b/%y %R |" )"
  else
    xsetroot -name "| $kbd | $wifi | $( date +"%a %d/%b/%y %R |" )"
  fi

  sleep 15s
done &

