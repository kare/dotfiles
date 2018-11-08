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
