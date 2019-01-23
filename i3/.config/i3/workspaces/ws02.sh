#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 2:: append_layout ~/.config/i3/layouts/workspace2-web.json"
i3-msg "workspace 2:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --no-default-browser-check --new-window"
i3-msg "workspace 2:; move workspace to output $PRIMARY"

