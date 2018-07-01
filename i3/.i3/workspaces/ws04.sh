#!/bin/bash
. ~/.i3/env

i3-msg "workspace 4:Work; append_layout ~/.i3/layouts/workspace4-work.json"
i3-msg "workspace 4:Work; exec termite -t shell1"
i3-msg "workspace 4:Work; exec termite -t shell2"
i3-msg "workspace 4:Work; exec termite -t vim -e vim"
i3-msg "workspace 4:Work; move workspace to output $PRIMARY"
