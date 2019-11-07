# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jfm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gallois"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi-mode
  docker
  fzf
  helm
)

source $ZSH/oh-my-zsh.sh

# User configuration
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
PS1="%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg_bold[blue]%}%d%{$reset_color%}"$'\n'"%{$bg[green]$fg_bold[black]%} INSERT %{$reset_color%}  "
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
alias istioctl="/home/jfm/Tools/istioctl/istio-1.3.4/bin/istioctl"
alias buildtool="/home/jfm/.buildtool/bin/buildtool"

alias vpnup="nmcli con up id \"YouSee VPN\""
alias vpndown="nmcli con down id \"YouSee VPN\""

alias k9t="k9s --context onboarding-test/master-int-liquid-tdk-dk:443/m78311 --command dp"
alias k9p="k9s --context onboarding-prod/liquid-tdk-dk:443/m78311 --command dp"
alias k9a="k9s --context arn:aws:eks:eu-north-1:273653477426:cluster/onboarding-beta-b --command dp"
alias awslogin="saml2aws login --idp-account nuuday_digital_dev --profile nuuday_digital_dev"

alias dtmux="tmux split-window -h -p 40"
alias ptmux="tmux split-window -h -p 40 \; split-window -v -p 25"


