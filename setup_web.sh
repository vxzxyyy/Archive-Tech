#!/bin/bash
set -e

echo "Updating system packages..."
sudo apt update -y

echo "Installing Apache, PHP and MySQL extension..."
sudo apt install apache2 php libapache2-mod-php php-mysql -y

echo "Starting and enabling Apache..."
sudo systemctl start apache2
sudo systemctl enable apache2

echo "Deploying custom index.html..."
echo "<h1>Welcome to the Automated Web Server!</h1>" | sudo tee /var/www/html/index.html

echo "Hardening SSH..."
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

echo "Hardening Apache..."
sudo sed -i 's/ServerTokens .*/ServerTokens Prod/' /etc/apache2/conf-available/security.conf
sudo sed -i 's/ServerSignature .*/ServerSignature Off/' /etc/apache2/conf-available/security.conf

echo "Hardening PHP..."
sudo sed -i 's/^expose_php = .*/expose_php = Off/' /etc/php/*/apache2/php.ini

sudo systemctl restart apache2

echo "Web Server setup complete!"