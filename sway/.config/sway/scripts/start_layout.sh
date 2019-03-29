#!/bin/bash

CONNECTED_CMD="swaymsg -t get_outputs | jq -c '. | length'"
monitors=`eval $CONNECTED_CMD`

if [ $monitors -gt 1 ]
then
  echo "DOCKED"
  ~/.config/sway/scripts/dock.sh &
else
  echo "UNDOCKED"
  ~/.config/sway/scripts/undock.sh &
fi

exit 0
