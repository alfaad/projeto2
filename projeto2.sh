#!/bin/bash

echo "configurando projeto 2"

apt update -y
apt upgrade -y

apt install apache2 -y
apt install unzip -y
apt wget -y

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /tmp

unzip main.zip
cd linux-site-dio-main/
rm var/www/html/index.html
cp * /var/www/html
mv about.html index.html

echo "terminado"