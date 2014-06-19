#!/usr/bin/env bash

sudo apt-get -y remove apache2
sudo apt-get -y update
sudo apt-get -y install python-software-properties
sudo apt-get -y install software-properties-common

sudo add-apt-repository ppa:nginx/stable
sudo apt-get install software-properties-common

sudo apt-get -y update
sudo apt-get -y install nginx

service nginx stop

sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old
sudo cp /vagrant/files/nginx/php/nginx.conf /etc/nginx
sudo cp /vagrant/files/nginx/php/fastcgi.conf /etc/nginx
sudo cp /vagrant/files/nginx/php/sites-avaliable/app /etc/nginx/sites-available/
cd /etc/nginx/sites-enabled/
sudo ln -s /etc/nginx/sites-available/app app

cd /etc/nginx/sites-enabled
sudo rm default

sudo service nginx start