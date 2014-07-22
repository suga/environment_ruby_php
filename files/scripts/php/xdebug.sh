#!/usr/bin/env bash
# @see http://www.sitepoint.com/debugging-xdebug-sublime-text-3/

cd /usr/local/src
sudo apt-get -y install php5-xdebug

sudo mv /etc/php5/mods-available/xdebug.ini /etc/php5/mods-available/xdebug.ini.old
sudo cp /vagrant/files/php/xdebug.ini /etc/php5/mods-available/
