#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install mysql-server -y

mysql -e "create user 'adminCorti'@'10.10.20.10' identified by 'Password&1';"
mysql -e "GRANT ALL PRIVILEGES  on *.* to 'adminCorti'@'10.10.20.10' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "create database corti_vagrant;"

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
systemctl restart mysql