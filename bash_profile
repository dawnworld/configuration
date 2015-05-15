alias ls='ls -G'
alias ll='ls -Gal'
#alias scp='/opt/local/bin/scp'
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#alias ssh=/usr/local/bin/ownssh

#export PATH=~/workspace/path:~/.rbenv/versions/1.9.3-p448/bin:$PATH
#export PATH=/usr/local/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#complete -W "$(echo `cat ~/.ssh/config | grep 'Host '| cut -f 2 -d ' '|uniq`;)" ssh sftp scp
#complete -W "$(echo `cat ~/.local/share/lftp/bookmarks |cut -f 1`;)" lftp
#complete -W "$(echo `cat ~/.local/share/rake/octo_cmd |cut -f 1`;)" rake 

# add title like this Dawnworld:~/workspace
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'

#export ADT_ROOT=/Users/mac/Applications/adt-bundle-mac-x86_64-20131030
#export NDK_ROOT=/Users/mac/workspace/env/android-ndk-r9d
#export PATH=$PATH:$ADT_ROOT/sdk/platform-tools

# set mvim path
PATH=~/workspace/env/local/bin:$PATH
# set adb path
PATH=~/workspace/env/android-sdk-macosx/platform-tools:$PATH
export PATH

