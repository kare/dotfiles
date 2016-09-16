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

autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats "%s %b (%a)"
zstyle ':vcs_info:*' formats "%b %u"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git hg
export PS1="%~ %1v %% "

bindkey -e

function precmd {
	window_label=${PWD/${HOME}/\~}
	tab_label=$window_label
	echo -ne "\e]2;${window_label}\a"
	echo -ne "\e]1;${tab_label: -24}\a"
	vcs_info
	psvar=()
	[[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}

function preexec {
	echo -ne "\e]1;$1\a"
}

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
# Zsh History
HISTFILE=$HOME/.zsh_history
HISTSIZE=SAVEHIST=99999

WORDCHARS="${WORDCHARS//\[\&=\/\]-;}"
LESSCHARSET="UTF-8"
JAVA_OPTS="-Dfile.encoding=UTF-8"
# Python
# pip should only run if there is a virtualenv currently activated
PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# Apple iCloud Drive
ICLOUD=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs
# Go
export GOPATH="$HOME"
