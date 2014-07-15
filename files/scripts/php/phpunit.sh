#!/usr/bin/env bash
# @see http://phpunit.de/manual/4.1/en/installation.html

cd /usr/local/src

sudo wget --no-check-certificate https://phar.phpunit.de/phpunit.phar
sudo chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit