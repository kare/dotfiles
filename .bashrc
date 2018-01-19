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
export PS1="\\h ; "

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
