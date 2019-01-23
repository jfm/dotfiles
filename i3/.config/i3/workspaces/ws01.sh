#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 1:; append_layout ~/.config/i3/layouts/ws-comms-wide.json"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --force-device-scale-factor=1.00 --app=https://mail.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --force-device-scale-factor=1.00 --app=https://calendar.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --force-device-scale-factor=1.00 --app=https://hangouts.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --force-device-scale-factor=1.00 --app=https://messages.android.com"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --force-device-scale-factor=1.00 --app=https://tdcgroup.slack.com"
  i3-msg "workspace 1:; move workspace to output $PRIMARY"
else
  i3-msg "workspace 1:; append_layout ~/.config/i3/layouts/workspace1-comms.json"
  i3-msg "workspace 1:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --no-default-browser-check --new-window https://www.toggl.com/app/timer https://mail.google.com/mail/u/0/#inbox https://calendar.google.com/calendar/r?tab=mc https://hangouts.google.com https://messages.android.com"
  i3-msg "workspace 1:; move workspace to output $LAPTOP"
fi
