# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
if [ `uname` = "Darwin" ]; then
  export ZSH_THEME="apple"
else
  export ZSH_THEME="example"
fi

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github golang)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
zmodload zsh/net/tcp
unsetopt correct_all
setopt extendedglob
setopt hist_ignore_all_dups
bindkey -e

export WORDCHARS="${WORDCHARS//\[\&=\/\];}"
export LESSCHARSET="UTF-8"
export JAVA_OPTS="-Dfile.encoding=UTF-8"

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
if [ -d "/usr/local/share/npm/bin" ]; then
    export PATH="$PATH:/usr/local/share/npm/bin"
fi
if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/go" ]; then
  export GOPATH="$HOME/go"
  export PATH="$GOPATH/bin:$PATH"
fi
if [ -d "/usr/local/plan9" ]; then
  export PLAN9="/usr/local/plan9"
  export PATH="$PATH:$PLAN9/bin"
fi
if [ -d "$HOME/.rvm/bin" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

alias godoc="godoc -http=:6060 -index=true -links=true 2 > /dev/null &"
alias config='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias config-update='(cd; config submodule init && config submodule update)'
alias on_os_x='test `uname` = "Darwin" && $@'
alias irssi='ssh pk.reaktor.fi -t screen -dr'
