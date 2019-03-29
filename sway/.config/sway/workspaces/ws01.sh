#!/bin/bash
source ~/.config/sway/scripts/location-helper.sh

if [ $LOCATION = "home" ];
then
  swaymsg exec "google-chrome-stable --app=https://mail.google.com"
  swaymsg exec "google-chrome-stable --app=https://calendar.google.com"
  swaymsg exec "google-chrome-stable --app=https://hangouts.google.com"
  swaymsg exec "google-chrome-stable --app=https://messages.android.com"
  swaymsg exec slack
else
  swaymsg "exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --no-default-browser-check --new-window https://www.toggl.com/app/timer https://mail.google.com/mail/u/0/#inbox https://calendar.google.com/calendar/r?tab=mc https://hangouts.google.com https://messages.android.com"
fi
