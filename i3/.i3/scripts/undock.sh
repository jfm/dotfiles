#!/bin/bash
. ~/.config/i3/env

~/.config/i3/scripts/laptop-layout.sh &

i3-msg "workspace 1: Comms; move workspace to output $LAPTOP"
i3-msg "workspace 2: Web; move workspace to output $LAPTOP"
i3-msg "workspace 3: IDE; move workspace to output $LAPTOP"
i3-msg "workspace 4: Work; move workspace to output $LAPTOP"
i3-msg "workspace 5: Media; move workspace to output $LAPTOP"
i3-msg "workspace 6: REST; move workspace to output $LAPTOP"
i3-msg "workspace 7: OC; move workspace to output $LAPTOP"
i3-msg "workspace 8: Logs; move workspace to output $LAPTOP"
i3-msg "workspace 9: Terminals; move workspace to output $LAPTOP"
i3-msg "workspace 10: Terminals; move workspace to output $LAPTOP"
