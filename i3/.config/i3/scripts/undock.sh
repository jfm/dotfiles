#!/bin/bash

~/.config/i3/scripts/laptop-monitors.sh &
sleep 3
~/.config/i3/scripts/laptop-layout.sh &

sleep 1
. ~/.config/i3/env

echo $PRIMARY
echo $SECONDARY
echo $LAPTOP

i3-msg "workspace 1:; move workspace to output $LAPTOP"
i3-msg "workspace 2:; move workspace to output $LAPTOP"
i3-msg "workspace 3:; move workspace to output $LAPTOP"
i3-msg "workspace 4:; move workspace to output $LAPTOP"
i3-msg "workspace 5:; move workspace to output $LAPTOP"
i3-msg "workspace 6:; move workspace to output $LAPTOP"
i3-msg "workspace 7:; move workspace to output $LAPTOP"
i3-msg "workspace 8:; move workspace to output $LAPTOP"
i3-msg "workspace 9:; move workspace to output $LAPTOP"
i3-msg "workspace 0:; move workspace to output $LAPTOP"
exit
