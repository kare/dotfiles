#!/bin/sh
#
# Tue Sep 19 10:43:46 EEST 2006
#

function stderr() {
    echo $* 1>&2
}

function usage() {
    SCRIPT=`basename $0`
    echo "usage: $SCRIPT [search] [filter}"
    echo "example: $SCRIPT encoding *.xml"
    exit
}

if [ $# -lt 1 ];then
    usage
fi

SEARCH=$1
FILTER=$2

FIND="find ."
if [ $# -eq 2 ]; then
    FIND="find . -name $FILTER"
fi

for file in `$FIND`
do
    grep --with-filename "$SEARCH" "$file"
done

