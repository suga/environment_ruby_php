#!/usr/bin/env bash

no '' | sudo pecl install mongo

sudo mv /etc/mongod.conf /etc/mongod.conf.old
sudo cp /vagrant/files/mongo/mongod.conf /etc/