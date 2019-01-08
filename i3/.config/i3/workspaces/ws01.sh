#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 1:; append_layout ~/.config/i3/layouts/ws-comms-wide.json"
  i3-msg "workspace 1:; exec google-chrome-stable --app=https://mail.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --app=https://calendar.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --app=https://hangouts.google.com"
  i3-msg "workspace 1:; exec google-chrome-stable --app=https://messages.android.com"
  i3-msg "workspace 1:; exec google-chrome-stable --app=https://tdcgroup.slack.com/messages/C518LG04W/"
  i3-msg "workspace 1:; move workspace to output $PRIMARY"
else
  i3-msg "workspace 1:; append_layout ~/.config/i3/layouts/workspace1-comms.json"
  i3-msg "workspace 1:; exec google-chrome-stable --no-default-browser-check --new-window https://www.toggl.com/app/timer https://mail.google.com/mail/u/0/#inbox https://calendar.google.com/calendar/r?tab=mc https://hangouts.google.com https://messages.android.com https://tdcgroup.slack.com/messages/C518LG04W/" 
  i3-msg "workspace 1:; move workspace to output $LAPTOP"
fi