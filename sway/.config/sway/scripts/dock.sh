#!/bin/bash

CONNECTED_CMD="swaymsg -t get_outputs | jq -c '. | length'"
monitors=`eval $CONNECTED_CMD`
echo $monitors
if [[ $monitors = 3 ]];
then
 echo "WORK"
 ~/.config/sway/scripts/work-sway.sh &
fi
if [[ $monitors = 2 ]];
then
 echo "HOME"
  ~/.config/sway/scripts/home-sway.sh &
fi

exit 0
