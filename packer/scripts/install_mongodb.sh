#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list

echo "installing mondodb..."
apt-get update
sleep 15s
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod
echo "mongodb is installed"
