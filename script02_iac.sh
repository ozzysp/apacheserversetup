#!/bin/bash

echo "Updating system..."

apt-get update
apt-get upgrade -y

echo "Installing packages..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Selecting temporary folder..."

cd /tmp

echo "Downloading files..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Installing site..."

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "All jobs done"

