#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "home" ];
then
  swaymsg "exec google-chrome-stable --no-default-browser-check --new-window"
  swaymsg "exec /home/jfm/Tools/idea-2018.3/bin/idea.sh"
fi
