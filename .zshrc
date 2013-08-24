# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
if [ `uname` = "Darwin" ]; then
  export ZSH_THEME="apple"
else
  export ZSH_THEME="flazz"
fi

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github golang)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
unsetopt correct_all
setopt extendedglob
setopt hist_ignore_all_dups
bindkey -e

export WORDCHARS="${WORDCHARS//\[\&=\/\];}"
export LESSCHARSET="UTF-8"
export JAVA_OPTS="-Dfile.encoding=UTF-8"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
#export PLAN9="/Users/kare/Projects/Plan9/src/plan9port"
#export PATH="$PLAN9/bin:$PATH"

alias godoc="godoc -http=:6060 -index=true -links=true 2>>~/.godoc.log &"
alias config='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias config-update='(cd; config submodule init && config submodule update)'
alias on_os_x='test `uname` = "Darwin" && $@'
