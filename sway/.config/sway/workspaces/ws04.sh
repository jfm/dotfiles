#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "home" ];
then
  swaymsg layout splith
  swaymsg exec google-chrome-stable
  swaymsg exec "termite -t vim -e nvim"
  swaymsg exec "termite -t shell1"
  swaymsg exec "termite -t shell2"
else
  swaymsg exec "termite -t vim -e nvim"
  swaymsg exec "termite -t shell1"
  swaymsg exec "termite -t shell2"
fi
