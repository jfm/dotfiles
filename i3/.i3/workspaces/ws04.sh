#!/bin/bash
. ~/.i3/env

i3-msg "workspace 4:; append_layout ~/.i3/layouts/workspace4-work.json"
i3-msg "workspace 4:; exec termite -t shell1"
i3-msg "workspace 4:; exec termite -t shell2"
i3-msg "workspace 4:; exec termite -t vim -e 'nvr -s --remote'"
i3-msg "workspace 4:; move workspace to output $PRIMARY"
