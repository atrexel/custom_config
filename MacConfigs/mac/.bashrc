#!bin/bash/

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export PS1='\[\e[0;32m\]\u@\h \[\e[0;33m\]\W\[\e[0;35m\]$(__git_ps1) \[\e[0;34m\]\$\[\e[0m\] '

export CLICOLOR=1
export LSCOLORS="exfxbxdxcxexexabagacad"

export PATH=$PATH:/usr/local/bin:/opt/instantclient_11_2
export ORACLE_HOME=/opt/instantclient_11_2 
#export DYLD_LIBRARY_PATH=/Library/Oracle/instantclient_11_2 
export TNS_ADMIN=/Users/mtrexel/oracle
export CLASSPATH=$CLASSPATH:$ORACLE_HOME
export NLS_LANG="English_Australia.UTF8"
