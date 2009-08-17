#!/bin/bash
# Does all this even need to be sudo'ed?
SCRIPT_DIR=`pwd`

sudo cp "$SCRIPT_DIR/../../src/php/php-5.3.0/php.ini-development" /usr/local/lib/php.ini
sudo cp "$SCRIPT_DIR/etc/apache/index.php" /var/www
sudo rm /var/www/index.html

cd /etc/apache2/mods-available
sudo cp "$SCRIPT_DIR/etc/apache/php5.load" .
sudo cp "$SCRIPT_DIR/etc/apache/php5.conf" .
sudo a2enmod php5
sudo a2enmod userdir
sudo a2enmod rewrite
sudo /etc/init.d/apache2 restart
