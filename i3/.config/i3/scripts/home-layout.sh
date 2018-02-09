#!/bin/sh
i3-msg 'workspace "1: Comms"; append_layout ~/.config/i3/layouts/home-workspace1-comms.json'
#i3-msg 'workspace "1: Comms"; exec /home/jfm/Tools/mattermost-desktop-3.7.1/mattermost-desktop'
i3-msg 'workspace "1: Comms"; exec gnome-terminal --title "weechat" -e "weechat"'
i3-msg 'workspace "1: Comms"; move workspace to output DP-2-2'
sleep 2

i3-msg 'workspace "2: Web"; append_layout ~/.config/i3/layouts/home-workspace2-web.json'
i3-msg 'workspace "2: Web"; exec google-chrome-beta'
i3-msg 'workspace "2: Web"; move workspace to output DP-2-2'
sleep 2

i3-msg 'workspace "3: IDE"; append_layout ~/.config/i3/layouts/home-workspace3-ide.json'
i3-msg 'workspace "3: IDE"; move workspace to output DP-2-1'
sleep 2

i3-msg 'workspace "4: Work"; append_layout ~/.config/i3/layouts/home-workspace4-work.json'
i3-msg 'workspace "4: Work"; exec subl'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell1"'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell2"'
i3-msg 'workspace "4: Work"; move workspace to output DP-2-1'
sleep 2

i3-msg 'workspace "5: Media"; append_layout ~/.config/i3/layouts/home-workspace5-media.json'
#TODO: Set and execute something for the first terminal
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="TODO"'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="newsbeuter" -e newsbeuter'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="music" -e ncmpc'
i3-msg 'workspace "5: Media"; move workspace to output DP-2-2'

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/frozen_leafs.jpg
~/.config/polybar/home-polybar.sh