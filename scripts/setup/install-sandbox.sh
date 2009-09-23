#!/bin/bash
SCRIPTS_DIR=`dirname $0`
cd $SCRIPTS_DIR
./01-prereqs.sh
./02-apache.sh
./03-mysql.sh
./035-pgsql.sh
./04-php-5-3.sh
./05-ubuntu-apache-php-conf.sh
./06-pdt.sh
./07-php-unit.sh
./08-xdebug.sh
