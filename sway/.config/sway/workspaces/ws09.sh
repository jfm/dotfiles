#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "home" ];
then
  swaymsg "exec termite -t newsboat -e newsboat"
  swaymsg "exec termite -t bark -d '/home/jfm/Repositories/bark' -e 'pipenv run python Bark.py'"
  swaymsg "exec termite -t rtv -e 'rtv --enable-media --theme default'"
  swaymsg "exec spotify"
else
  swaymsg "exec termite -t newsboat -e newsboat"
  swaymsg "exec termite -t twitter -d '/home/jfm/Repositories/bark' -e 'pipenv run python Bark.py'"
  swaymsg "exec termite -t rtv -e 'rtv --enable-media --theme default'"
fi
