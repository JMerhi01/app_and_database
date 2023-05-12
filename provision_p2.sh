#!/bin/bash
# Change directory to the app directory
cd /home/vagrant/app

# Seed the database and start the app
node seeds/seed.js
node app.js
