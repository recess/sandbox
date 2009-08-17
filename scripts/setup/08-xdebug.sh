#!/bin/bash
SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR/../../
DEVENV=`pwd`
yes | sudo aptitude install kcachegrind
mkdir "$DEVENV/tools/xdebug"
chmod 0777 "$DEVENV/tools/xdebug"
yes | sudo pecl install xdebug
cat "$DEVENV/scripts/setup/etc/php/xdebug.ini" | sudo tee -a /usr/local/lib/php.ini
sudo "$DEVENV/scripts//util/string-replace.sh" /usr/local/lib/php.ini "__DEVENV__" "$DEVENV"
sudo /etc/init.d/apache2 restart
