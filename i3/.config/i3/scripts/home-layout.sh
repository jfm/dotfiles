#!/bin/sh
i3-msg 'workspace "1: Comms"; append_layout ~/.config/i3/layouts/home-workspace1-comms.json'
i3-msg 'workspace "1: Comms"; exec gnome-terminal --profile weechat -e weechat'
i3-msg 'workspace "1: Comms"; move workspace to output DP-2-2'

i3-msg 'workspace "2: Web"; append_layout ~/.config/i3/layouts/home-workspace2-web.json'
i3-msg 'workspace "2: Web"; exec google-chrome-beta'
i3-msg 'workspace "2: Web"; move workspace to output DP-2-2'

i3-msg 'workspace "3: IDE"; append_layout ~/.config/i3/layouts/home-workspace3-ide.json'
i3-msg 'workspace "3: IDE"; move workspace to output DP-2-1'

i3-msg 'workspace "4: Work"; append_layout ~/.config/i3/layouts/home-workspace4-work.json'
i3-msg 'workspace "4: Work"; exec subl'
i3-msg 'workspace "4: Work"; exec exec gnome-terminal --profile default --title=shell1'
i3-msg 'workspace "4: Work"; exec exec gnome-terminal --profile default --title=shell2'
i3-msg 'workspace "4: Work"; move workspace to output DP-2-1'

i3-msg 'workspace "5: Media"; append_layout ~/.config/i3/layouts/home-workspace5-media.json'
i3-msg 'workspace "5: Media"; exec exec gnome-terminal --profile default --title=tasks'
i3-msg 'workspace "5: Media"; exec exec gnome-terminal --profile default --title=newsbeuter -e newsbeuter'
i3-msg 'workspace "5: Media"; exec exec gnome-terminal --profile default --title=ncmpc -e ncmpc'
i3-msg 'workspace "5: Media"; move workspace to output DP-2-2'

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg
~/.config/polybar/home-polybar.sh