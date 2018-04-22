#!/bin/bash
. ~/.i3/env

i3-msg "workspace 1:Comms; append_layout ~/.i3/layouts/workspace1-comms.json"
i3-msg "workspace 1:Comms; exec google-chrome-stable --new-window https://chat.google.com https://mattermost.yousee.dk https://tdcgroup.slack.com --no-default-browser-check"
i3-msg "workspace 1:Comms; move workspace to output $SECONDARY"
