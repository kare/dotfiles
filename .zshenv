#
# `.zshenv' is sourced on all invocations of the shell, unless the -f
# option is set. It should contain commands to set the command search
# path, plus other important environment variables. `.zshenv' should not
# contain commands that produce output or assume the shell is attached
# to a tty.
#

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
if [ -d "/usr/local/go/bin" ]; then
  export PATH="/usr/local/go/bin:$PATH"
fi
if [ -d "/usr/local/plan9port" ]; then
  export PLAN9="/usr/local/plan9port"
  export PATH="$PATH:$PLAN9/bin"
fi
if [ -d "$HOME/.rvm/bin" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# Python
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
