# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/Tools/adr-tools/src:$PATH"
fi
PATH="$HOME/.local/bin:$HOME/bin:$HOME/Tools/adr-tools/src:$HOME/Tools/helm/linux-arm64:$PATH"
export PATH
JAVA_HOME=/usr/lib/jvm/java-16
export JAVA_HOME

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# GIt Prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias k9s=/home/jfm/Tools/k9s/k9s

alias vtmux="tmux split-window -v -p 40"
alias dtmux="tmux split-window -h -p 40"
alias ptmux="tmux split-window -h -p 40 \; split-window -v -p 25"

alias code="cd /home/jfm/Customers/Nuuday/code"

EDITOR=nvim
export EDITOR
