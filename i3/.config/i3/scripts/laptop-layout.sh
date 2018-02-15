#!/bin/sh
i3-msg 'workspace "1: Comms"; append_layout ~/.config/i3/layouts/laptop-workspace1-comms.json'
i3-msg 'workspace "1: Comms"; exec gnome-terminal --profile weechat -e weechat'
i3-msg 'workspace "1: Comms"; move workspace to output eDP-1'

i3-msg 'workspace "2: Web"; append_layout ~/.config/i3/layouts/laptop-workspace2-web.json'
i3-msg 'workspace "2: Web"; exec google-chrome-beta'
i3-msg 'workspace "2: Web"; move workspace to output eDP-1'

i3-msg 'workspace "3: IDE"; append_layout ~/.config/i3/layouts/laptop-workspace3-ide.json'
i3-msg 'workspace "3: IDE"; move workspace to output eDP-1'

i3-msg 'workspace "4: Work"; append_layout ~/.config/i3/layouts/laptop-workspace4-work.json'
i3-msg 'workspace "4: Work"; exec subl'
i3-msg 'workspace "4: Work"; exec urxvt -title shell1'
i3-msg 'workspace "4: Work"; exec urxvt -title shell2'
i3-msg 'workspace "4: Work"; move workspace to output eDP-1'

i3-msg 'workspace "5: Media"; append_layout ~/.config/i3/layouts/laptop-workspace5-media.json'
i3-msg 'workspace "5: Media"; exec urxvt -title tasks'
i3-msg 'workspace "5: Media"; exec urxvt -e newsbeuter'
i3-msg 'workspace "5: Media"; exec urxvt -e ncmpc'
i3-msg 'workspace "5: Media"; move workspace to output eDP-1'

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/fedora_simple.jpg
~/.config/polybar/laptop-polybar.sh
