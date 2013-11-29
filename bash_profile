alias ls='ls -G'
alias ll='ls -Gal'
#alias sftp='/opt/local/bin/sftp'
#alias scp='/opt/local/bin/scp'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#alias ctags=/opt/local/bin/ctags

export PATH=~/.rbenv/versions/1.9.3-p448/bin:$PATH
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
complete -W "$(echo `cat ~/.ssh/config | grep 'Host '| cut -f 2 -d ' '|uniq`;)" ssh sftp scp
complete -W "$(echo `cat ~/.local/share/lftp/bookmarks |cut -f 1`;)" lftp
complete -W "$(echo `cat ~/.local/share/rake/octo_cmd |cut -f 1`;)" rake 
# add title like this Dawnworld:~/workspace
#export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'

