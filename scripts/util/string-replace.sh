#!/bin/sh

subject=$1
findString=$2
replaceString=$3

if [ "$subject" = "" -o "$findString" = "" -o "$replaceString" = "" ]; then
	echo "usage: string-replace [file] [findString] [replaceString]"
	exit
fi

sed "s|$findString|$replaceString|g" $subject > "$subject.str-replace"
mv "$subject.str-replace" $subject
