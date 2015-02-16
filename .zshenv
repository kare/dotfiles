#
# `.zshenv' is sourced on all invocations of the shell, unless the -f
# option is set. It should contain commands to set the command search
# path, plus other important environment variables. `.zshenv' should not
# contain commands that produce output or assume the shell is attached
# to a tty.
#

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# Go
export GOPATH="$HOME"
export PATH="/usr/local/opt/go/libexec/bin:$PATH" # GOROOT-based install location

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
