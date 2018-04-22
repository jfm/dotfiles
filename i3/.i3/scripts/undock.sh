#!/bin/bash

~/.i3/scripts/laptop-monitors.sh &
~/.i3/scripts/laptop-layout.sh &

sleep 1
. ~/.i3/env

echo $PRIMARY
echo $SECONDARY
echo $LAPTOP

i3-msg "workspace 1:Comms; move workspace to output $LAPTOP"
i3-msg "workspace 2:Web; move workspace to output $LAPTOP"
i3-msg "workspace 3:IDE; move workspace to output $LAPTOP"
i3-msg "workspace 4:Work; move workspace to output $LAPTOP"
i3-msg "workspace 5:OC; move workspace to output $LAPTOP"
i3-msg "workspace 6:Logs; move workspace to output $LAPTOP"
i3-msg "workspace 7:Term; move workspace to output $LAPTOP"
i3-msg "workspace 8:Media; move workspace to output $LAPTOP"

exit