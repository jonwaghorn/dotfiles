EDITOR=vi; export EDITOR
#DEAD=$HOME/.dead.letter; export DEAD
#HISTFILESIZE=100; export HISTFILESIZE
PAGER=less; export PAGER
PRINTER=LaserJet_4L___Northland; export PRINTER

#stty erase

PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/X11R6/bin:$PATH:~/bin:$HOME/.bin:.; export PATH

# MySql
#PATH=/usr/local/mysql/bin:$PATH; export PATH
#PATH=/opt/local/lib/mysql5/bin:$PATH; export PATH

# Postgres
PATH=/opt/local/lib/postgresql84/bin:$PATH; export PATH
ARCHFLAGS='-arch x86_64'; export ARCHFLAGS


# ant
#ANT_HOME=/usr/local/ant; export ANT_HOME
#PATH=$PATH:$ANT_HOME/bin; export PATH

# Java
#JAVA_HOME=/Library/Java/Home; export JAVA_HOME
#CLASSPATH=/usr/local/mysql/connectors; export CLASSPATH

# MacPorts
#PATH=/opt/local/bin:$PATH; export PATH

# Set command prompt
#PS1="\u@\h:\w\n$ "; export PS1
PS1="\u@\h(\$(~/.rvm/bin/rvm-prompt v)):\w\n$ "; export PS1


# aliases
alias h='history'
alias ls='ls -FG'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias dos2unix="perl -pi -e 's/\r\n/\n/;'"
alias f="find config db app lib test spec features public/stylesheets -name \* | grep -vw svn | xargs grep $*"
alias gs='git status'
alias p='source change_project $*'


# git
export PATH=/usr/local/git/bin:$PATH
export MANPATH=/usr/local/git/man:$MANPATH

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

