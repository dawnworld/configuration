alias ls='ls -G'
alias ll='ls -Gal'
alias sftp='/opt/local/bin/sftp'
#alias scp='/opt/local/bin/scp'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias ctags=/opt/local/bin/ctags

##
# Your previous /Users/mac/.bash_profile file was backed up as /Users/mac/.bash_profile.macports-saved_2012-07-29_at_14:43:32
##

# MacPorts Installer addition on 2012-07-29_at_14:43:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
complete -W "$(echo `cat ~/.ssh/config | grep 'Host '| cut -f 2 -d ' '|uniq`;)" ssh sftp scp
# add title like this Dawnworld:~/workspace
#export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'
