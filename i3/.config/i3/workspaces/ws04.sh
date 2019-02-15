#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 4:; append_layout ~/.config/i3/layouts/ws-work-wide.json"
  i3-msg "workspace 4:; exec google-chrome-stable --proxy-pac-url=file:///home/jfm/Customers/TDC/Scripts/tdcproxy.js --no-default-browser-check --new-window"
  i3-msg "workspace 4:; exec termite -t vim -e 'nvr -s --remote' --hold"
  i3-msg "workspace 4:; exec termite -t shell"
  i3-msg "workspace 4:; exec termite -t shell2"
#  i3-msg "workspace 4:; exec google-chrome-stable --app=http://netflix.com"
  i3-msg "workspace 4:; exec termite -t weechat -e weechat"
  i3-msg "workspace 4:; move workspace to output $PRIMARY"
else
  i3-msg "workspace 4:; append_layout ~/.config/i3/layouts/workspace4-work.json"
  i3-msg "workspace 4:; exec termite -t shell1"
  i3-msg "workspace 4:; exec termite -t shell2"
  i3-msg "workspace 4:; exec termite -t vim -e 'nvr -s --remote' --hold"
  i3-msg "workspace 4:; move workspace to output $PRIMARY"
fi
