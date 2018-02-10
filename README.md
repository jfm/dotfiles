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
* [Gnome Terminal](https://github.com/GNOME/gnome-terminal)

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

# Stow Commands
I use Gnu Stow to manage my dotfiles. Dotfiles from this repository can be used by issuing:
~~~
stow -t ~ i3  
stow -t ~ dunst  
stow -t ~ polybar  
stow -t ~ rofi  
stow -t ~ gtk
stow -t ~ zsh
~~~
