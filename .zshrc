#
# `.zshrc' is sourced in interactive shells. It should contain commands
# to set up aliases, functions, options, key bindings, etc.
#

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
plugins=(git github golang rails ruby)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
zmodload zsh/net/tcp
unsetopt correct_all
setopt extendedglob
setopt hist_ignore_all_dups
bindkey -e

alias godoc-http="godoc -http=:6060 -index=true -links=true 2> /dev/null &"
alias on_os_x='test `uname` = "Darwin" && $@'
alias diff=colordiff
alias vi='open -a VimR'
alias vim=vi

unalias run-help
autoload run-help
export HELPDIR=/usr/local/share/zsh/help
