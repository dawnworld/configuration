# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Fix Change Backgroud colors only works in text
export TERM=screen-256color

source ~/.git-completion.bash
source ~/.git-prompt.sh

export PS1='\[\e[36m\][\[\e[m\]\u@\h \[\e[33m\]\W\[\e[35m\]$(__git_ps1 " (%s)")\[\e[36m\]]\$\[\e[m\] '

