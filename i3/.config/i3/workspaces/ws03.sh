#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 3:; append_layout ~/.config/i3/layouts/ws-ide-wide.json"
  i3-msg "workspace 3:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --no-default-browser-check --new-window"
  i3-msg "workspace 3:; exec /home/jfm/Tools/idea-2018.3/bin/idea.sh"
  i3-msg "workspace 3:; move workspace to output $PRIMARY"
else
  i3-msg "workspace 3:; append_layout ~/.config/i3/layouts/workspace3-ide.json"
  i3-msg "workspace 3:; move workspace to output $PRIMARY"
fi
