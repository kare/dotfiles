export PLAN9=/usr/local/plan9
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH=$HOME/bin:$HOME/go/bin:$PATH
export PATH=$PATH:$PLAN9/bin
export PATH="$PATH:/opt/local/bin:/opt/local/sbin"
export MANPATH="$MANPATH:/opt/local/share/man"
export INFOPATH="$INFOPATH:/opt/local/share/info"
export GOPATH=$HOME
export EDITOR=editinacme
export CLICOLOR=1
if [ $CLICOLOR == 1 ]; then
	export GREP_OPTIONS="--color=auto"
fi
