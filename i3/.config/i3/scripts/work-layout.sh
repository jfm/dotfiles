#!/bin/sh
i3-msg 'workspace "1: Comms"; append_layout ~/.config/i3/layouts/work-workspace1-comms.json'
i3-msg 'workspace "1: Comms"; exec gnome-terminal --title="weechat" -e weechat'
#i3-msg 'workspace "1: Comms"; exec /home/jfm/Tools/mattermost-desktop-3.7.1/mattermost-desktop'
i3-msg 'workspace "1: Comms"; move workspace to output DP-2-1'
sleep 2

i3-msg 'workspace "2: Web"; append_layout ~/.config/i3/layouts/work-workspace2-web.json'
i3-msg 'workspace "2: Web"; exec google-chrome-beta'
i3-msg 'workspace "2: Web"; move workspace to output DP-2-2'
sleep 2

i3-msg 'workspace "3: IDE"; append_layout ~/.config/i3/layouts/work-workspace3-ide.json'
i3-msg 'workspace "3: IDE"; move workspace to output DP-2-2'
sleep 2

i3-msg 'workspace "4: Work"; append_layout ~/.config/i3/layouts/work-workspace4-work.json'
i3-msg 'workspace "4: Work"; exec subl'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell1"'
i3-msg 'workspace "4: Work"; exec gnome-terminal --title="shell2"'
i3-msg 'workspace "4: Work"; move workspace to output DP-2-2'
sleep 2

i3-msg 'workspace "5: Media"; append_layout ~/.config/i3/layouts/work-workspace5-media.json'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="tasks" --profile laptop'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="newsbeuter" --profile laptop -e newsbeuter'
i3-msg 'workspace "5: Media"; exec gnome-terminal --title="music" --profile laptop -e ncmpc'
i3-msg 'workspace "5: Media"; move workspace to output eDP-1'
sleep 2
i3-msg 'workspace "6: REST"; append_layout ~/.config/i3/layouts/work-workspace6-rest.json'
i3-msg 'workspace "6: REST"; exec gnome-terminal --title="http-prompt" --working-directory=/home/jfm/Customers/TDC/ApiTest -e http-prompt'
i3-msg 'workspace "6: REST"; move workspace to output DP-2-1'
sleep 2

feh --bg-scale --zoom fill ~/.config/i3/wallpaper/frozen_leafs.jpg
~/.config/i3/polybar/work-polybar.sh