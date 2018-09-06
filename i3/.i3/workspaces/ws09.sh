#!/bin/bash
. ~/.i3/env
i3-msg "workspace 9:News; append_layout ~/.i3/layouts/workspace9-news.json"
i3-msg "workspace 9:News; exec kitty -T newsboat newsboat"
i3-msg "workspace 9:News; exec kitty -T weechat weechat"
i3-msg "workspace 9:News; move workspace to output $SECONDARY"
