#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql

apt-get install adminer

systemctl restart apache2

