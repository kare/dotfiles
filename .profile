export PLAN9=/usr/local/plan9
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH=.:$HOME/bin:$HOME/go/bin:$PATH
export PATH=$PATH:$PLAN9/bin
export PATH="$PATH:/opt/local/bin:/opt/local/sbin"
export MANPATH="$MANPATH:/opt/local/share/man"
export INFOPATH="$INFOPATH:/opt/local/share/info"
export GOPATH=$HOME
export EDITOR=editinacme

[ -s "/Users/kkn/.web3j/source.sh" ] && source "/Users/kkn/.web3j/source.sh"
. "$HOME/.cargo/env"
