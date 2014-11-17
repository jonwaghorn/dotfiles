export EDITOR='vim'
export PAGER='less'
#export PRINTER='LaserJet_4L___Northland'

export PATH=/usr/local/bin:/usr/local/sbin:/usr/X11R6/bin:$PATH:~/bin:$HOME/.bin:.

# MySql
#export PATH=/usr/local/mysql/bin:$PATH
#export PATH=/opt/local/lib/mysql5/bin:$PATH

# Postgres
export ARCHFLAGS='-arch x86_64'

# Java
#export JAVA_HOME=/Library/Java/Home
#export CLASSPATH=/usr/local/mysql/connectors
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

function parse_git_branch {
  git branch 2> /dev/null | grep '^\*' | cut -c3-
}

# Set command prompt
#export PS1="\u@\h:\w\n$ "
#export PS1="\u@\h(\$(~/.rvm/bin/rvm-prompt v g):\$(parse_git_branch)):\w\n$ "
export PS1="\u@\h(\e[1;34m\$(~/.rvm/bin/rvm-prompt v g)\e[0m:\e[0;32m\$(parse_git_branch)\e[0m):\w\n$ "

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# rbenv
#eval "$(rbenv init -)"

export CONSUMER_PUBLIC_PATH=$HOME/Projects/3months/consumer/consumer_public_draft/ConsumerPublic
export CONSUMER_ADMIN_PATH=$HOME/Projects/3months/consumer/consumer_admin_draft/ConsumerAdmin

# Aliases
alias h='history'
alias ls='ls -FG'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias f="find config db app lib test spec features public/stylesheets -name \* | grep -vw svn | xargs grep $*"
alias gs='git status'
alias p='source change_project $*'

