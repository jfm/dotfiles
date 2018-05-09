# Dotfiles
These are the configuration files I currently use for my daily driver setup of i3 etc.

# Multimonitor support
I have implemented a manual switching mechanism so that I can switch configuration if I'm at work, at home or just the laptop

# Components
* [i3-gaps](https://github.com/Airblader/i3)
* [Rofi](https://github.com/DaveDavenport/rofi)
* [Dunst](https://github.com/dunst-project/dunst) 
* [URxvt](https://github.com/exg/rxvt-unicode)

## Applications
* [ncmpcpp](https://github.com/arybczak/ncmpcpp)
* [NewsBoat](https://github.com/newsboat/newsboat)


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
