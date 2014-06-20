#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential
sudo apt-get -y install curl
apt-get -y install vim

sudo apt-get install --reinstall locales
sudo locale-gen pt_BR.UTF-8