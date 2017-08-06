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
#  git rev-parse --abbrev-ref HEAD
}
function ruby_version {
  ruby --version | cut -d' ' -f2
}

# Set command prompt
#export PS1="\u@\h:\w\n$ "
export PS1="\u@\h(\e[1;34m\$(ruby_version)\e[0m:\e[0;32m\$(parse_git_branch)\e[0m):\w\n$ "

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Aliases
alias h='history'
alias ls='ls -FGh'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias gs='git status'
alias gst='git status'
alias p='source change_project $*'
alias be='bundle exec'


export NVM_DIR="/Users/jon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
