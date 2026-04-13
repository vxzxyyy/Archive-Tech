#!/bin/bash
set -e

DB_PASS="SecureAdmin123!"

echo "Updating packages..."
sudo apt update -y

echo "Installing MySQL Server..."
sudo DEBIAN_FRONTEND=noninteractive apt install mysql-server -y

echo "Configuring remote access..."
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql

echo "Creating database and user..."
sudo mysql -e "CREATE DATABASE IF NOT EXISTS project_db;"
sudo mysql -e "CREATE USER IF NOT EXISTS 'web_user'@'%' IDENTIFIED BY 'app_password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON project_db.* TO 'web_user'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "Database setup complete!"#!/bin/bash
set -e

DB_PASS="SecureAdmin123!"

echo "Updating packages..."
sudo apt update -y

echo "Installing MySQL Server..."
sudo DEBIAN_FRONTEND=noninteractive apt install mysql-server -y

echo "Configuring remote access..."
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql

echo "Creating database and user..."
sudo mysql -e "CREATE DATABASE IF NOT EXISTS project_db;"
sudo mysql -e "CREATE USER IF NOT EXISTS 'web_user'@'%' IDENTIFIED BY 'app_password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON project_db.* TO 'web_user'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "Database setup complete!"
