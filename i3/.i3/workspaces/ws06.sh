#!/bin/bash
. ~/.i3/env

i3-msg "workspace 6:Logs; append_layout ~/.i3/layouts/workspace6-logs.json"
i3-msg "workspace 6:Logs; exec urxvt -name logs-shell1"
i3-msg "workspace 6:Logs; exec urxvt -name logs-shell2"
i3-msg "workspace 6:Logs; exec urxvt -name logs-shell3"
i3-msg "workspace 6:Logs; move workspace to output $SECONDARY"
