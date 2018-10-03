#!/bin/bash
. ~/.i3/env
i3-msg "workspace 0:; append_layout ~/.i3/layouts/workspace0-irc.json"
i3-msg "workspace 0:; exec termite -t weechat -e weechat"
i3-msg "workspace 0:; exec termite -t weechat -e weechat"
i3-msg "workspace 0:; move workspace to output $SECONDARY"
