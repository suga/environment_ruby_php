#!/usr/bin/env bash

sudo apt-get -y update

sudo apt-get -y install php5-curl php5-json php5-gd php5-fpm 


sudo mv /etc/php5/cli/php.ini /etc/php5/cli/php.ini.old
sudo cp /vagrant/files/php/php.ini /etc/php5/cli/ 
