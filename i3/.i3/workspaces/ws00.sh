#!/bin/bash
. ~/.i3/env
i3-msg "workspace 0:TimeWaste; append_layout ~/.i3/layouts/workspace0-timewaste.json"
i3-msg "workspace 0:TimeWaste; exec kitty -T hackernews hn"
i3-msg "workspace 0:TimeWaste; exec kitty -T rtv rtv --enable-media"
i3-msg "workspace 0:TimeWaste; move workspace to output $SECONDARY"
