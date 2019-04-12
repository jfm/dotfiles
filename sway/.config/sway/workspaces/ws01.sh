#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "home" ];
then
  swaymsg exec "google-chrome-stable --app=https://mail.google.com"
  swaymsg exec "google-chrome-stable --app=https://calendar.google.com"
  swaymsg exec "google-chrome-stable --app=https://web.whatsapp.com"
  swaymsg exec "google-chrome-stable --app=https://messages.google.com/web/"
else
  swaymsg "exec google-chrome-stable --no-default-browser-check --new-window https://www.toggl.com/app/timer https://mail.google.com/mail/u/0/#inbox https://calendar.google.com/calendar/r?tab=mc https://web.whatsapp.com https://messages.google.com/web/"
fi
