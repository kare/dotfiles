#!/bin/bash
set -eu -o pipefail

function usage() {
	echo "Usage: npmrc [-h]" 1>&2
	echo "	-h Show help" 1>&2
}

while getopts "h" arg; do
	case $arg in
	h|*) # Show help
		usage
		exit 1
	;;
	esac
done

cat << __NPMRC__
color=false
progress=false
save-exact=true
engine-strict=true
__NPMRC__

