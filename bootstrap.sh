#!/bin/bash

# Database credentials
db_user="demo_user"
db_pass="1q2w3e4r"

# Updates package lists for upgrades, new packages from repositories
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Install PHP-FPM
sudo apt-get install -y php7.2-fpm

# Override default nginx.conf
sudo cp /vagrant/nginx.conf /etc/nginx/sites-available/default

# Restart Nginx
sudo systemctl restart nginx

# Install MySQL
sudo apt-get install -y mysql-server

# Update MySQL config to bind every available network 
sed  -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf

# Restart MySQL
sudo systemctl restart mysql

# Create MySQL user that allow access from all location
sudo mysql -uroot -e "CREATE USER '$db_user'@'%' IDENTIFIED BY '$db_pass';GRANT ALL PRIVILEGES ON *.* TO '$db_user'@'%' WITH GRANT OPTION;FLUSH PRIVILEGES;"




