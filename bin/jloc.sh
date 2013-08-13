#!/bin/sh
#
# Tue Sep 19 15:42:32 EEST 2006
#

SUM=0
FILES=0
for file in `find . -name \*.java`
do
    LINES=`cat $file|wc -l`
    SUM=`expr $SUM + $LINES`
    FILES=`expr $FILES + 1`
done

echo $SUM lines in $FILES files.

