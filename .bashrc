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
export HISTSIZE=5000
export HISTFILESIZE=99999
export HISTIGNORE='&:[ ]*'
export PS1="\\h ; "
