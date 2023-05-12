#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo apt-get install python-software-properties -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install pm2 -g
