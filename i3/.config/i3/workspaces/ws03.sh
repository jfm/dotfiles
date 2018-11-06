#!/bin/bash
. ~/.config/i3/env

if [ $LOCATION = "home" ];
then
  i3-msg "workspace 3:IDE; append_layout ~/.config/i3/layouts/ws-ide-wide.json"
  i3-msg "workspace 3:IDE; move workspace to output $PRIMARY"
else
  i3-msg "workspace 3:IDE; append_layout ~/.config/i3/layouts/workspace3-ide.json"
  i3-msg "workspace 3:IDE; move workspace to output $PRIMARY"
fi
