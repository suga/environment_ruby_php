#!/usr/bin/env bash
# @see http://alexeyrybak.com/blitz/blitz_en.html
cd /usr/local/src
sudo curl --remote-name http://alexeyrybak.com/blitz/blitz-0.8.9.tar.gz

sudo tar zxvf blitz-0.8.9.tar.gz

cd blitz-0.8.9
sudo phpize
sudo ./configure
sudo make install

sudo mkdir /usr/local/lib/blitz/ && sudo cp -r /usr/local/src/blitz-0.8.9/ /usr/local/lib/blitz/