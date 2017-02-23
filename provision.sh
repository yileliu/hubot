#!/bin/bash

apt-get -y update
apt-get install curl

dpkg -s npm &> /dev/null || {
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
	sudo apt-get install -y nodejs
	ln -s /usr/bin/nodejs /usr/bin/node
}

command -v hubot &>/dev/nul || {
	 npm install -g yo generator-hubot coffee-script
	 mkdir -p /vagrant/myhubot
	 cd /vagrant/myhubot
}