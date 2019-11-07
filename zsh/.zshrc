# Path to your oh-my-zsh installation.
export ZSH="/home/jfm/.oh-my-zsh"

# THEME
ZSH_THEME="gallois"

# PLUGINS
plugins=(
  git
  vi-mode
  docker
  fzf
  helm
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
