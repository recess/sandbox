#!/bin/bash
yes | sudo pear upgrade pear
yes | sudo pear channel-discover pear.phpunit.de
yes | sudo pear install --alldeps phpunit/PHPUnit
yes | sudo pear install phpunit/PHPUnit-3.4.0beta5
