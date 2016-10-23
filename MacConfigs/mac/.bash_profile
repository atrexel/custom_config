#!bin/bash/

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export PS1='\[\e[0;32m\]\u@\h \[\e[0;33m\]\W\[\e[0;35m\]$(__git_ps1) \[\e[0;34m\]\$\[\e[0m\] '

export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxdxd
#export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LSCOLORS="exfxbxdxcxexexabagacad"
#                1 2 3 4 5 6 7 8 9 A B

# https://softwaregravy.wordpress.com/2010/10/16/ls-colors-for-mac/
# The order of the LSCOLORS attributes are as follows:
# 1.   directory
# 2.   symbolic link
# 3.   socket
# 4.   pipe
# 5.   executable
# 6.   block special
# 7.   character special
# 8.   executable with setuid bit set
# 9.   executable with setgid bit set
# 10.  directory writable to others, with sticky bit
# 11.  directory writable to others, without sticky bit
#
# The value of this variable describes what color to use for which attribute
# when colors are enabled with CLICOLOR.  This string is a concatenation of pairs 
# of the format fb, where f is the foreground color and b is the background color.
# 
# The color designators are as follows:
#  a     black
#  b     red
#  c     green
#  d     brown
#  e     blue
#  f     magenta
#  g     cyan
#  h     light grey
#  A     bold black, usually shows up as dark grey
#  B     bold red
#  C     bold green
#  D     bold brown, usually shows up as yellow
#  E     bold blue
#  F     bold magenta
#  G     bold cyan
#  H     bold light grey; looks like bright white
#  x     default foreground or background

export PATH=$PATH:/usr/local/bin:/opt/instantclient_11_2
export ORACLE_HOME=/opt/instantclient_11_2 
#export DYLD_LIBRARY_PATH=/Library/Oracle/instantclient_11_2 
export TNS_ADMIN=/Users/mtrexel/oracle
export CLASSPATH=$CLASSPATH:$ORACLE_HOME
export NLS_LANG="English_Australia.UTF8"
