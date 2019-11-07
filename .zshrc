#
# `.zshrc' is sourced in interactive shells. It should contain commands
# to set up aliases, functions, options, key bindings, etc.
#

# For debuging zsh startup time.
# Enable 'zprof' at the end of this file.
#zmodload zsh/zprof

autoload -U compinit
compinit
compdef _git dotfiles=git
fignore=(.o .class)
# Zsh I/O
unsetopt correct_all
setopt correct
setopt flow_control
setopt interactive_comments
# Zsh Expansion and globbing
setopt extended_glob
# Zsh history
setopt inc_append_history_time
setopt extended_history
setopt hist_ignore_all_dups
setopt all_export
fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats "%s %b (%a)"
zstyle ':vcs_info:*' formats "%b %u"
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' enable git hg
PS1="%n@%m %~ %1v %% "
#export PS1="%n %~ %1v %% "

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
HISTFILE="$HOME/.zhistory"
HISTSIZE="100000"
SAVEHIST="100000"

WORDCHARS="${WORDCHARS//\[\&=\/\]-;}"
LESSCHARSET="UTF-8"
LESS="-iMRj4a"
JAVA_OPTS="-Dfile.encoding=UTF-8"
# Python
# pip should only run if there is a virtualenv currently activated
PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"
# Apple iCloud Drive
ICLOUD=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs
# Go
GOPATH="$HOME"
GO111MODULE="on"
GOPROXY="https://proxy.golang.org"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/tools/google-cloud-sdk/path.zsh.inc' ]; then source '$HOME/tools/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '$HOME/tools/google-cloud-sdk/completion.zsh.inc' ]; then source '$HOME/tools/google-cloud-sdk/completion.zsh.inc'; fi

SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# lazy load nvm for quick shell startup
#function nvm() {
#	if [ -d "/usr/local/opt/nvm" ]; then
#		export NVM_DIR="$HOME/.nvm"
#		source "/usr/local/opt/nvm/nvm.sh"
#		nvm "$@"
#	else
#		echo "zsh: command not found: nvm" >&2
#		return 127
#	fi
#}
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

eval "$(rbenv init -)"

#zprof
