# Dotfiles
These are the configuration files I currently use for my daily driver setup of i3 etc on Manjaro linux.

# Multimonitor support
I have implemented a custom couple of scripts to handle screen setup for work, home and just on the laptop. It does not work with docking/undocking yet though

# Components
* [i3-gaps](https://github.com/Airblader/i3)
* [Rofi](https://github.com/DaveDavenport/rofi)
* [Dunst](https://github.com/dunst-project/dunst) 
* [URxvt](https://github.com/exg/rxvt-unicode)

## Applications
* [ncmpcpp](https://github.com/arybczak/ncmpcpp)
* [NewsBoat](https://github.com/newsboat/newsboat)
* [Sublime Text 3](https://www.sublimetext.com/)

# Stow Commands
I use Gnu Stow to manage my dotfiles. Dotfiles from this repository can be used by issuing:
~~~
stow -t ~ i3  
stow -t ~ rofi  
stow -t ~ urxvt
stow -t ~ newsboat
stow -t ~ sublime
stow -t ~ bash
~~~
