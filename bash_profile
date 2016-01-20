# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

alias psg='ps aux|grep '
# User specific environment and startup programs

#export TERM=gnome-256color
# Fix Change Backgroud colors only works in text
export TERM=screen-256color

source ~/.git-completion.bash
source ~/.git-prompt.sh

#export PS1='[\[\e[35m\]\u\[\e[36m\]@\[\e[36\]\h \[\e[33m\]\W\[\e[35m\]$(__git_ps1 " (%s)")\[\e[36m\]]\$\[\e[m\] '
export PS1='\[\e[36m\][\[\e[m\]\u@\h \[\e[33m\]\W\[\e[35m\]$(__git_ps1 " (%s)")\[\e[36m\]]\$\[\e[m\] '

PATH=$PATH:$HOME/bin

export PATH

#export BNG=../../../
export BNG=/home/qiyl/workspace/flexbng-dev
#export BNG=/home/qiyl/workspace/flexbng-shang
export BNG_DBG=$BNG/build/debug
#export BNG_DBG=$BNG/build
export BNG_MP_LIB=$BNG_DBG/management-plane/lib/alarmmgr-lib
export BNG_CP_LIB=$BNG_DBG/lib/control-plane
export BNG_CMN_LIB=$BNG/common/target:$BNG_DBG/lib/common
export LD_LIBRARY_PATH=$BNG_CMN_LIB:$BNG_CP_LIB:$BNG_MP_LIB:$LD_LIBRARY_PATH:/usr/local/lib

export ZOOKEEPER_HOME=/home/qiyl/env/zookeeper-3.4.6
export PATH=$ZOOKEEPER_HOME/bin:$PATH

export CONFD_DIR=/usr/local/confd
export PATH=$PATH:$CONFD_DIR/bin
