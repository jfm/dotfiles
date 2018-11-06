#!/bin/bash
. ~/.config/i3/env

i3-msg "workspace 5:OC; append_layout ~/.config/i3/layouts/workspace5-oc.json"
i3-msg "workspace 5:OC; exec urxvt -name oc-shell1"
i3-msg "workspace 5:OC; exec urxvt -name oc-shell2"
i3-msg "workspace 5:OC; exec urxvt -name oc-shell3"
i3-msg "workspace 5:OC; move workspace to output $PRIMARY"
