#!/bin/bash

# The purpose of this script is to add a host alias to the OS' hosts file

host=$1

if [ "$host" == "" ]; then
	echo "Add an alias to the OS hosts file"
	echo "[Note: Must be run as administrator]"
	echo "usage: addhost [hostname]"
	exit
fi

echo "127.0.0.1	$host" >> /etc/hosts
