# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path to your oh-my-zsh installation.
export ZSH=/home/jfm/.oh-my-zsh

export TERM="xterm-256color"

## Theme
ZSH_THEME="spaceship"

## Plugins
plugins=(git gradle mvn docker sublime dnf taskwarrior)

source $ZSH/oh-my-zsh.sh

## Exports
export ANT_HOME=/home/jfm/Tools/apache-ant-1.9.4
export MVN_HOME=/home/jfm/Tools/apache-maven-3.2.5
export GRADLE_HOME=/home/jfm/Tools/gradle-4.0.1
export JAVA_HOME=/home/jfm/Tools/jdk1.8.0_111
export FLY_HOME=/home/jfm/Tools/fly
export PATH=$FLY_HOME:$JAVA_HOME/bin:$ANT_HOME/bin:$MVN_HOME/bin:$GRADLE_HOME/bin:/usr/bin:$PATH:

## Alias
alias oc="/home/jfm/Tools/openshift-origin-client-tools-v3.6.0/oc"
alias ocdel="/home/jfm/Tools/openshift-origin-client-tools-v3.6.0/oc delete bc,builds,dc,rc,routes,svc,po -l"
alias portfwd="/home/jfm/Customers/TDC/Scripts/portforwards.sh"
alias mopd="nohup mopidy >/dev/null 2>&1 &"

# Disable history Sharing
unsetopt share_history

#Add OC support
source <(oc completion zsh)