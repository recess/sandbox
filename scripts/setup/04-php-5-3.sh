#!/bin/bash

PHP_DIR="../../src/php"

if [ ! -d $PHP_DIR ]; then
        mkdir $PHP_DIR
fi

cd $PHP_DIR

if [ ! -f "php-5.3.0.tar.gz" ]; then
        wget http://us3.php.net/get/php-5.3.0.tar.gz/from/this/mirror
fi

if [ ! -d "php-5.3.0" ]; then
        tar xvfz php-5.3.0.tar.gz
fi

cd php-5.3.0

./configure --with-apxs2=/usr/bin/apxs2 --with-mysql=/usr --with-mysqli=/usr/bin/mysql_config --with-pgsql=/usr --with-tidy=/usr --with-curl=/usr/bin --with-curlwrappers --with-openssl-dir=/usr --with-zlib-dir=/usr --enable-mbstring --with-xpm-dir=/usr --with-pdo-pgsql=/usr --with-pdo-mysql=/usr --with-xsl=/usr --with-ldap --with-xmlrpc --with-iconv-dir=/usr --with-snmp=/usr --enable-exif --enable-calendar --with-bz2=/usr --with-mcrypt=/usr --with-gd --with-jpeg-dir=/usr --with-png-dir=/usr --with-zlib-dir=/usr --with-freetype-dir=/usr --enable-mbstring --enable-zip --with-pear --enable-pdo --enable-soap --with-pdo-sqlite=/usr --enable-readline --enable-sockets

make clean

make

sudo make -i install
