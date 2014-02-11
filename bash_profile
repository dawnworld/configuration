alias ls='ls -G'
alias ll='ls -Gal'
#alias scp='/opt/local/bin/scp'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export PATH=~/workspace/path:~/.rbenv/versions/1.9.3-p448/bin:$PATH
export PATH=/usr/local/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
complete -W "$(echo `cat ~/.ssh/config | grep 'Host '| cut -f 2 -d ' '|uniq`;)" ssh sftp scp
complete -W "$(echo `cat ~/.local/share/lftp/bookmarks |cut -f 1`;)" lftp
complete -W "$(echo `cat ~/.local/share/rake/octo_cmd |cut -f 1`;)" rake 
# add title like this Dawnworld:~/workspace
#export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'

