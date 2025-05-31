#!/bin/bash
apt update -y
apt install -y apache2 php libapache2-mod-php git unzip
systemctl start apache2
systemctl enable apache2

cd /var/www/html
rm index.html
git clone https://github.com/AryanSharma2206/gym-website
