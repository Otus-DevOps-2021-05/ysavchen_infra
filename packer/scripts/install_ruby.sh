#!/bin/bash
echo "installing ruby..."
apt-get update
sleep 15s
apt-get install -y ruby-full ruby-bundler build-essential
echo "ruby is installed"
