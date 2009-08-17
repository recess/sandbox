#!/bin/sh

subject=$1
findString=$2
appendString=$3
range=$4

if [ "$subject" = "" -o "$findString" = "" -o "$appendString" = "" ]; then
	echo "usage: append-to-line [file] [findString] [appendString] [range=optional]"
	exit
fi

if [ "$range" = "" ]; then
	sed "s|$findString|$appendString|" $subject > "$subject.append-to-line"
else
	sed "$range"' s|'"$findString"'|\1 '"$appendString"'|' $subject > "$subject.append-to-line"
fi

mv "$subject.append-to-line" $subject
