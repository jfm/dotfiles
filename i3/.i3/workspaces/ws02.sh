#!/bin/bash
. ~/.i3/env

i3-msg "workspace 2:Web; append_layout ~/.i3/layouts/workspace2-web.json"
i3-msg "workspace 2: Web; exec google-chrome-stable --new-window https://www.toggl.com/app/timer https://inbox.google.com/ --no-default-browser-check"
i3-msg "workspace 2: Web; move workspace to output $PRIMARY"

