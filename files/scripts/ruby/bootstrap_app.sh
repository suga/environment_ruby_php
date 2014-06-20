#!/usr/bin/env bash

sudo service nginx stop

cd /var/www/app
bundle install
bundle update

sudo mv /etc/mongod.conf /etc/mongod.conf.old
sudo cp /vagrant/files/mongo/mongod.conf /etc/

sudo service nginx start