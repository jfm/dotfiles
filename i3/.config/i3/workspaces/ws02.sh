#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 2: Web; append_layout ~/.config/i3/layouts/workspace2-web.json"
i3-msg "workspace 2: Web; exec google-chrome-beta --new-window https://www.toggl.com/app/timer https://inbox.google.com/"
i3-msg "workspace 2: Web; move workspace to output $PRIMARY"

