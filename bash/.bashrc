#
# ~/.bashrc
#
export HISTSIZE=10000
set -o vi

[[ $- != *i* ]] && return

colors() {
  local fgc bgc vals seq0

  printf "Color escapes are %s\n" '\e[${value};...;${value}m'
  printf "Values 30..37 are \e[33mforeground colors\e[m\n"
  printf "Values 40..47 are \e[43mbackground colors\e[m\n"
  printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

  # foreground colors
  for fgc in {30..37}; do
    # background colors
    for bgc in {40..47}; do
      fgc=${fgc#37} # white
      bgc=${bgc#40} # black

      vals="${fgc:+$fgc;}${bgc}"
      vals=${vals%%;}

      seq0="${vals:+\e[${vals}m}"
      printf "  %-9s" "${seq0:-(default)}"
      printf " ${seq0}TEXT\e[m"
      printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
    done
    echo; echo
  done
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
    ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
  && type -P dircolors >/dev/null \
  && match_lhs=$(dircolors --print-database)
  [[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

  if ${use_color} ; then
    # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
    if type -P dircolors >/dev/null ; then
      if [[ -f ~/.dir_colors ]] ; then
        eval $(dircolors -b ~/.dir_colors)
      elif [[ -f /etc/DIR_COLORS ]] ; then
        eval $(dircolors -b /etc/DIR_COLORS)
      fi
    fi

    if [[ ${EUID} == 0 ]] ; then
      PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
    else
      PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
    fi

    alias ls='ls --color=auto'
    alias grep='grep --colour=auto'
    alias egrep='egrep --colour=auto'
    alias fgrep='fgrep --colour=auto'
  else
    if [[ ${EUID} == 0 ]] ; then
      # show root@ when we don't have colors
      PS1='\u@\h \W \$ '
    else
      PS1='\u@\h \w \$ '
    fi
  fi

  unset use_color safe_term match_lhs sh

  alias cp="cp -i"                          # confirm before overwriting something
  alias df='df -h'                          # human-readable sizes
  alias free='free -m'                      # show sizes in MB
  alias np='nano -w PKGBUILD'
  alias more=less

  xhost +local:root > /dev/null 2>&1

  complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#Bash Completion for OC
source <(/home/jfm/Tools/openshift-origin-client/oc completion bash)

#AWS Completion
complete -C '/usr/bin/aws_completer' aws
source <(kubectl completion bash)

#Git Config
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWDIRTYSTATE="auto"
GIT_PS1_SHOWCOLORHINTS="auto"
GIT_PS1_SHOWUNTRACKEDFILES="auto"
GIT_PS1_STATESEPARATOR=" "
#Kubernetes Config
KUBE_PS1_BINARY=/home/jfm/Tools/openshift-origin-client/oc
KUBE_PS1_PREFIX=
KUBE_PS1_SUFFIX=
KUBE_PS1_SEPARATOR=
function get_cluster_short() {
  echo "$1" | cut -d / -f2 | cut -d : -f1 | cut -d - -f1
}

KUBE_PS1_CLUSTER_FUNCTION=get_cluster_short

source /usr/share/git/completion/git-prompt.sh
source ~/Repositories/GitHub/kube-ps1/kube-ps1.sh
eval "$(pipenv --completion)"
PS1='\[\e[1;32m\u@\h \e[1;34m\w\]\n\[\e[1;33m\]$(__git_ps1 "(%s) ")\[\e[m\]$(kube_ps1) '

#Disable some CTRL for VIM commands
bind -r '\C-s'
stty -ixon
stty -echoctl

#Paths
export M2_HOME=/home/jfm/Tools/apache-maven
export PATH=$PATH:$M2_HOME/bin:/home/jfm/Tools/openshift-origin-client/:/home/jfm/Tools/aws/:/home/jfm/Tools/spin/
export GIT_EDITOR=nvim
export EDITOR="nvim"
export VISUAL="nvim"

#Aliases
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

alias buildtool="/home/jfm/.buildtool/bin/buildtool"

alias vpnup="nmcli con up id \"YouSee VPN\""
alias vpndown="nmcli con down id \"YouSee VPN\""

alias k9t="k9s --context onboarding-test/master-int-liquid-tdk-dk:443/m78311 --command dp"
alias k9p="k9s --context onboarding-prod/liquid-tdk-dk:443/m78311 --command dp"
alias k9a="k9s --context arn:aws:eks:eu-north-1:273653477426:cluster/onboarding-beta-b --command dp"
alias awslogin="saml2aws login --idp-account nuuday_digital_dev --profile nuuday_digital_dev"

alias dtmux="tmux split-window -h -p 40"
alias ptmux="tmux split-window -h -p 40 \; split-window -v -p 25"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jfm/.sdkman"
[[ -s "/home/jfm/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jfm/.sdkman/bin/sdkman-init.sh"
