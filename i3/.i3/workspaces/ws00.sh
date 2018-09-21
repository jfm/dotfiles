#!/bin/bash
. ~/.i3/env
i3-msg "workspace 0:IRC; append_layout ~/.i3/layouts/workspace0-irc.json"
i3-msg "workspace 0:IRC; exec termite -t weechat -e weechat"
i3-msg "workspace 0:IRC; move workspace to output $SECONDARY"
