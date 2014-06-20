#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install python-software-properties
sudo apt-get -y update
sudo add-apt-repository ppa:ondrej/php5
sudo apt-get -y update

sudo apt-get -y install php5 php5-dev php5-cli php-pear

