#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "work" ];
then
 echo "WORK"
 ~/.config/sway/scripts/work-sway.sh &
fi
if [ $LOCATION = "home" ];
then
 echo "HOME"
  ~/.config/sway/scripts/home-sway.sh &
fi

exit 0
