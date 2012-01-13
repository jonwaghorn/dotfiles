EDITOR=vi; export EDITOR
#DEAD=$HOME/.dead.letter; export DEAD
#HISTFILESIZE=100; export HISTFILESIZE
PAGER=less; export PAGER
PRINTER=LaserJet_4L___Northland; export PRINTER

#stty erase

PATH=/usr/local/bin:/usr/local/sbin:/usr/X11R6/bin:$PATH:~/bin:$HOME/.bin:.; export PATH

# MySql
#PATH=/usr/local/mysql/bin:$PATH; export PATH
#PATH=/opt/local/lib/mysql5/bin:$PATH; export PATH

# Postgres
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
PS1="\u@\h(\$(~/.rvm/bin/rvm-prompt v g)):\w\n$ "; export PS1


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

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export CONSUMER_PUBLIC_PATH=$HOME/Projects/consumer/consumer_public_draft/ConsumerPublic
export CONSUMER_ADMIN_PATH=$HOME/Projects/consumer/consumer_admin_draft/ConsumerAdmin

