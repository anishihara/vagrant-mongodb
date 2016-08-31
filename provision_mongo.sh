#!/usr/bin/env bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

echo "=================================================================="
echo "Inside the box, comment out the bind_ip line from /etc/mongod.conf."
echo "-------------------------------------------------------------------"
echo "#Listen to local interface only. Comment out to listen on all interfaces."
echo "bind_ip = 127.0.0.1"
echo "-------------------------------------------------------------------"