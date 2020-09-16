# Path to your oh-my-zsh installation.
export ZSH="/home/jfm/.oh-my-zsh"

# THEME
ZSH_THEME="gallois"

# PLUGINS
plugins=(
  git
  docker
  fzf
  helm
  pipenv
)

source $ZSH/oh-my-zsh.sh

# CUSTOM SETTINGS
# PROMPT
autoload -U colors && colors

# Remove mode switching delay.
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    PS1="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%d%{$reset_color%}"$'\n'"%{$bg[cyan]$fg_bold[black]%} NORMAL %{$reset_color%}  "
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    PS1="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%d%{$reset_color%}"$'\n'"%{$bg[green]$fg_bold[black]%} INSERT %{$reset_color%}  "
    echo -ne '\e[5 q'
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
#PS1="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%d%{$reset_color%}"$'\n'"%{$bg[green]$fg_bold[black]%} INSERT %{$reset_color%}  "
PS1="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%d%{$reset_color%}"$'\n'" "
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
   echo -ne '\e[5 q'
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export M2_HOME=/home/jfm/Tools/apache-maven
export PATH=$PATH:$M2_HOME/bin:/home/jfm/Tools/openshift-origin-client/:/home/jfm/Tools/aws/:/home/jfm/Tools/spin/
export GIT_EDITOR=nvim
export VISUAL="nvim"

# BINDS

# Aliases
alias code="cd /home/jfm/Customers/TDC/Code/Onboarding"
alias ops="cd /home/jfm/Customers/TDC/Code/GitLab/ops"
alias onboarding="cd /home/jfm/Customers/TDC/Code/GitLab/onboarding"
alias mst="cd /home/jfm/Customers/TDC/Code/GitLab/onboarding/microservice-tools"
alias dotfiles="cd /home/jfm/Repositories/dotfiles"
alias tdc="cd /home/jfm/Customers/TDC"

alias top="htop"
alias ssh="TERM=xterm-256color ssh"
alias vim="nvim"
alias vi="nvim"

alias kubectx="/home/jfm/Repositories/GitHub/kubectx/kubectx"

alias vtmux="tmux split-window -d -v -p 40 && vim"
alias dtmux="tmux split-window -d -h -p 40 && vim"
alias ptmux="tmux split-window -d -h -p 40 \; split-window -d -t 2 -v -p 25 && vim"
alias ftmux="tmux split-window -d -h -p 40 \; split-window -d -t 2 -v -p 25 nnn && vim"

alias brewme="cd /home/jfm/Repositories/brewme-reports && ptmux"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
