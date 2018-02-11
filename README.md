# Dotfiles
These are the configuration files I currently use for my daily driver setup of i3 etc.

# Multimonitor support
I have implemented a manual switching mechanism so that I can switch configuration if I'm at work, at home or just the laptop

# Components
* [i3-gaps](https://github.com/Airblader/i3)
* [Polybar](https://github.com/jaagr/polybar)
* [i3lock-fancy](https://github.com/guimeira/i3lock-fancy-multimonitor)
* [Rofi](https://github.com/DaveDavenport/rofi)
* [Dunst](https://github.com/dunst-project/dunst) 
* [URxvt](https://github.com/exg/rxvt-unicode)

## Applications
* [WeeChat](https://github.com/weechat/weechat)
* [ncmpc](https://github.com/MusicPlayerDaemon/ncmpc)
* [Newsbeuter](https://github.com/akrennmair/newsbeuter)

# Themes
## Master Branch
### GTK
[Materia-dark](https://github.com/nana-4/materia-theme)  

### Icons
[Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)  

### ZSH Prompt
[Spaceship](https://github.com/denysdovhan/spaceship-prompt)

### Colors
Backgrounds: #263238

#### Polybar
Focused Foreground: #009688  
Unfocused Foreground: #BDBDBD  
Urgent Foreground: #BF360C	

#### URxvt
I've overridden two colors in URxvt to make the theming for some apps look right
~~~
URxvt*color1: #009688
URxvt*color2: #263238
~~~

### Weechat
I'm using the theme script to theme my weechat. 

# Stow Commands
I use Gnu Stow to manage my dotfiles. Dotfiles from this repository can be used by issuing:
~~~
stow -t ~ i3  
stow -t ~ dunst  
stow -t ~ polybar  
stow -t ~ rofi  
stow -t ~ gtk
stow -t ~ zsh
stow -t ~ urxvt

stow -t ~ weechat
stow -t ~ ncmpc
stow -t ~ newsbeuter
~~~
