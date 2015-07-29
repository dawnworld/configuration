alias ls='ls -G'
alias ll='ls -Gal'
alias tailf='tail -f'
alias wq='wireshark-qt &'
alias do='ssh root@45.55.9.39'
alias 199='ssh qiyl@172.16.45.199'
alias 139="ssh -t qiyl@172.16.45.139 'cd /home/qiyl/workspace/work/msa && exec bash -l'"
alias tj="ssh -t 10.166.173.241 'cd /home/qiyl/workspace && exec bash -l'"
alias 184="ssh -t 172.16.48.184 'cd /home/qiyl/workspace && exec bash -l'"
alias vmware="ssh -t root@172.16.16.143 'cd /home/qiyl/workspace && exec bash -l'"
#alias ssh=/usr/local/bin/ownssh

#export PATH=~/workspace/path:~/.rbenv/versions/1.9.3-p448/bin:$PATH
#export PATH=/usr/local/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
#complete -W "$(echo `cat ~/.ssh/config | grep 'Host '| cut -f 2 -d ' '|uniq`;)" ssh sftp scp
#complete -W "$(echo `cat ~/.local/share/lftp/bookmarks |cut -f 1`;)" lftp
#complete -W "$(echo `cat ~/.local/share/rake/octo_cmd |cut -f 1`;)" rake 

# add title like this Dawnworld:~/workspace
# export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'
export PS1="\[\e[32m\][\[\e[35m\]\u\[\e[36m\]@\[\e[36m\]\h \[\e[31m\]\w\[\e[32m\]]\[\e[36m\]$\[\e[m\] "

#export ADT_ROOT=/Users/mac/Applications/adt-bundle-mac-x86_64-20131030
#export NDK_ROOT=/Users/mac/workspace/env/android-ndk-r9d
#export PATH=$PATH:$ADT_ROOT/sdk/platform-tools

# set mvim path
PATH=~/workspace/env/local/bin:$PATH
# set adb path
PATH=~/workspace/env/android-sdk-macosx/platform-tools:$PATH
export PATH

