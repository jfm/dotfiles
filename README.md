# i3 Dotfiles
This is my configuration of the i3-gaps windows manager.

# Multimonitor support
I have implemented a manual switching mechanism so that I can switch configuration depending on I'm at work, at home or just the laptop

# Components
* [i3-gaps](https://github.com/Airblader/i3)
* [Polybar](https://github.com/jaagr/polybar)
* [i3lock-fancy](https://github.com/guimeira/i3lock-fancy-multimonitor)
* [Rofi](https://github.com/DaveDavenport/rofi)
* [Dunst](https://github.com/dunst-project/dunst) 
* [Gnome Terminal](https://github.com/GNOME/gnome-terminal)

# Themes
GTK: [Materia-dark](https://github.com/nana-4/materia-theme)  
Icons: [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)  

Defined in ~/.config/gtk-3.0/settings.ini or by lxappearance application.

## Colors
Backgrounds: #263238

### Polybar
Focused Foreground: #009688  
Unfocused Foreground: #BDBDBD  
Urgent Foreground: #BF360C	

# Other Settings
## Gnome Terminal
Padding in the gnome terminals is done by adding:
~~~
vte-terminal {
    padding: 10px;
}
~~~
in ~/.config/gtk-3.0/gtk.css

### Shell
I use ZSH with the latest Spaceship prompt

# Stow
I use Gnu Stow to manage my dotfiles. Dotfiles from this repository can be used by issuing:
~~~
stow -t ~ i3  
stow -t ~ dunst  
stow -t ~ polybar  
stow -t ~ rofi  
stow -t ~ gtk
~~~
