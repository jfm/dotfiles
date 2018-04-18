#!/bin/bash
. ~/.i3/env

i3-msg "workspace 4:Work; append_layout ~/.i3/layouts/workspace4-work.json"
i3-msg "workspace 4:Work; exec subl3"
i3-msg "workspace 4:Work; exec urxvt -name shell1"
i3-msg "workspace 4:Work; exec urxvt -name shell2"
i3-msg "workspace 4:Work; move workspace to output $PRIMARY"