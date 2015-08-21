#
# `.zshrc' is sourced in interactive shells. It should contain commands
# to set up aliases, functions, options, key bindings, etc.
#

autoload -U compinit
compinit
compdef _git dotfiles=git
zmodload zsh/net/tcp
# Zsh I/O
unsetopt correct_all
setopt correct
setopt flow_control
setopt interactive_comments
# Zsh Expansion and globbing
setopt extended_glob
# Zsh history
setopt share_history
setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups

bindkey -e

PS1="%~ %% "
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
# Zsh History
HISTFILE=$HOME/.zsh_history
HISTSIZE=SAVEHIST=99999

# Grep options
GREP_OPTIONS=""
VCS_FOLDERS="{.bzr,.cvs,.git,.hg,.svn}"
GREP_OPTIONS+=" --exclude-dir=$VCS_FOLDERS"
unset VCS_FOLDERS
WORDCHARS="${WORDCHARS//\[\&=\/\]-;}"
LESSCHARSET="UTF-8"
JAVA_OPTS="-Dfile.encoding=UTF-8"
# Python
# pip should only run if there is a virtualenv currently activated
PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# boot2docker
DOCKER_HOST=tcp://192.168.59.103:2376
DOCKER_CERT_PATH=/Users/kare/.boot2docker/certs/boot2docker-vm
DOCKER_TLS_VERIFY=1
# Apple iCloud Drive
ICLOUD=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs
# Go
export GOPATH="$HOME"
