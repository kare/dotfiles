#
# `.zshenv' is sourced on all invocations of the shell, unless the -f
# option is set. It should contain commands to set the command search
# path, plus other important environment variables. `.zshenv' should not
# contain commands that produce output or assume the shell is attached
# to a tty.
#

setopt no_global_rcs

export MANPATH="$MANPATH:/opt/local/share/man"
export INFOPATH="$INFOPATH:/opt/local/share/info"

export PATH="/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$HOME/tools/google-cloud-sdk/bin"
export PATH=node_modules/.bin:$PATH
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH=$PATH:~/.platformio/penv/bin

# Plan 9
if [ -d "/usr/local/plan9" ]; then
	export PLAN9="/usr/local/plan9"
	export PATH="$PATH:$PLAN9/bin"
fi

if [ -d "$HOME/.rvm/bin" ]; then
	export PATH="$PATH:$HOME/.rvm/bin"
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=".:$HOME/bin:$HOME/go/bin:/usr/local/bin:$PATH"
. "$HOME/.cargo/env"
export PATH="/Users/kkn/.ebcli-virtual-env/executables:$PATH"
