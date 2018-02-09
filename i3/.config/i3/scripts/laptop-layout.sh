#!/bin/sh
i3-msg 'workspace "1: Comms"; append_layout ~/.config/i3/layouts/laptop-workspace1-comms.json'
#i3-msg 'workspace "1: Comms"; exec /home/jfm/Tools/mattermost-desktop-3.7.1/mattermost-desktop'
i3-msg 'workspace "1: Comms"; exec gnome-terminal --title "weechat" --profile laptop -e "weechat"'
i3-msg 'workspace "1: Comms"; move workspace to output eDP-1'

i3-msg 'workspace "2: Web"; append_layout ~/.config/i3/layouts/laptop-workspace2-web.json'
i3-msg 'workspace "2: Web"; exec google-chrome-beta'
i3-msg 'workspace "2: Web"; move workspace to output eDP-1'

i3-msg 'workspace "3: IDE"; append_layout ~/.config/i3/layouts/laptop-workspace3-ide.json'
i3-msg 'workspace "3: IDE"; move workspace to output eDP-1'

i3-msg 'workspace "4: Work"; append_layout ~/.config/i3/layouts/laptop-workspace4-work.json'
i3-msg 'workspace "4: Work"; exec subl'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell1" --profile laptop'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell2" --profile laptop'
i3-msg 'workspace "4: Work"; move workspace to output eDP-1'

i3-msg 'workspace "5: Media"; append_layout ~/.config/i3/layouts/laptop-workspace5-media.json'
#TODO: Set and execute something for the first terminal
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="TODO" --profile laptop'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="newsbeuter" --profile laptop -e newsbeuter'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="music" --profile laptop -e ncmpc'
i3-msg 'workspace "5: Media"; move workspace to output eDP-1'

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/frozen_leafs.jpg
~/.config/polybar/laptop-polybar.sh
