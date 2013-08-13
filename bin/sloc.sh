#!/bin/sh
#
# Thu Sep 21 16:43:35 EEST 2006
#

find . -name \*.java -exec wc {} \; | awk '{a+=$1;print a}' |tail -1

