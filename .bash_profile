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
function ruby_version {
  ruby --version | cut -d' ' -f2
}

# Set command prompt
#export PS1="\u@\h:\w\n$ "
export PS1="\u@\h(\e[1;34m\$(ruby_version)\e[0m:\e[0;32m\$(parse_git_branch)\e[0m):\w\n$ "

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export CONSUMER_PUBLIC_PATH=$HOME/Projects/3months/consumer/consumer_public_draft/ConsumerPublic
export CONSUMER_ADMIN_PATH=$HOME/Projects/3months/consumer/consumer_admin_draft/ConsumerAdmin

# Aliases
alias h='history'
alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias f="find config db app lib test spec features public/stylesheets -name \* | grep -vw svn | xargs grep $*"
alias gs='git status'
alias p='source change_project $*'
alias be='bundle exec'

