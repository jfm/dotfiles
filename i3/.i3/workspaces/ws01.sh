#!/bin/bash
. ~/.i3/env

i3-msg "workspace 1:Comms; append_layout ~/.i3/layouts/workspace1-comms.json"
i3-msg "workspace 1:Comms; exec google-chrome-stable --no-default-browser-check --new-window https://www.toggl.com/app/timer https://mail.google.com/mail/u/0/#inbox https://calendar.google.com/calendar/r?tab=mc https://chat.google.com https://messages.android.com https://mattermost.yousee.dk/tdcgroup/channels/onboarding"
i3-msg "workspace 1:Comms; move workspace to output $LAPTOP"
