#!/bin/sh
sudo apt update
sudo apt install apache2 -y
# Get HTTPS cert
sudo snap install core; sudo snap refresh core
sudo apt-get remove certbot -y
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --apache --domains ritik.gq
