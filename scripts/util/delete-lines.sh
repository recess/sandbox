#!/bin/sh

subject=$1
findString=$2

if [ "$subject" = "" -o "$findString" = "" ]; then
	echo "usage: delete_lines [file] [findString]"
	exit
fi

subjectCopy="$subject.delete-lines"

sed "$findString d" $subject > $subjectCopy

mv $subjectCopy $subject
