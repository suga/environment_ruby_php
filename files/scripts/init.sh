#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential
sudo apt-get -y install curl
apt-get -y install vim

sudo apt-get install --reinstall locales && sudo dpkg-reconfigure locales
sudo locale-gen en_US.UTF-8