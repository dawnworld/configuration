alias ls='ls -G'
alias ll='ls -Gal'
alias tailf='tail -f'

export LC_ALL="en_US.UTF-8"

if [ -f $(brew --prefix)/etc/bash_completion  ]; then
    . $(brew --prefix)/etc/bash_completion
fi
# add title like this Dawnworld:~/workspace
# export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'
#export PS1="\[\e[32m\][\[\e[35m\]\u\[\e[36m\]@\[\e[36m\]\h \[\e[31m\]\w\[\e[32m\]]\[\e[36m\]$\[\e[m\] "
export PS1='\[\e[36m\][\[\e[35m\]\u\[\e[36m\]@\[\e[36m\]\h \[\e[33m\]\W\[\e[35m\]$(__git_ps1 " (%s)")\[\e[36m\]]\$\[\e[m\] '

source ~/.git-completion.bash
source ~/.git-prompt.sh

#export ADT_ROOT=/Users/mac/Applications/adt-bundle-mac-x86_64-20131030
#export NDK_ROOT=/Users/mac/workspace/env/android-ndk-r9d
#export PATH=$PATH:$ADT_ROOT/sdk/platform-tools

# set mvim path
export MONO_GAC_PREFIX="/usr/local"
PATH=/usr/local/sbin:~/workspace/env/local/bin:$PATH
# set adb path
#PATH=~/workspace/env/android-sdk-macosx/platform-tools:$PATH
export PATH
export GOPATH=$HOME/workspace/go

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
