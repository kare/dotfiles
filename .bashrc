_cd () {
	\cd "$@" &&
	case "$TERM!$-" in
	linux!*)
		;;
	*!*i*)
		awd
	esac
}
alias cd=_cd
#shopt -s globstar
shopt -s dotglob
export HISTSIZE=0
export HISTFILESIZE=0
case "$termprog" in
	win | 9term)
		export PS1="\\u ; "
		;;
	*)
		export PS1="\\u \\w $ "
		;;
esac

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "$HOME/.web3j/source.sh" ] && source "$HOME/.web3j/source.sh"
. "$HOME/.cargo/env"
