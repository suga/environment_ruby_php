#!/usr/bin/env bash

sudo service nginx stop

cd /var/www/app
bundle install
bundle update

sudo service nginx start