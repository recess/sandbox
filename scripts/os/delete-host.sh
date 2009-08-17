#!/bin/bash

SCRIPTS=`dirname $0`/..

# The purpose of this script is to add a host alias to the OS' hosts file

host=$1

if [ "$host" == "" ]; then
	echo "Remove an alias to the OS hosts file."	
	echo "[Note: Must be run with sudo]"
	echo "usage: delete-host [hostname]"
	exit
fi

removeHost="/127\.0\.0\.1.*$host$/"

"$SCRIPTS/util/delete-lines.sh" /etc/hosts "$removeHost"
