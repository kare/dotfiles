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
shopt -s histverify
export HISTSIZE=0
export HISTFILESIZE=0
export HISTIGNORE='&:[ ]*'
export PS1="\\h ; "
