#!/bin/bash

echo "Step1 - Installing Apache"

echo "apt update"
sudo apt update
echo "sudo apt install apache2"
sudo apt install -y apahce2

# 필요시에 ufw로 방화벽 풀기


# installing curl
echo "Insalling curl..."
echo "sudo apt install curl"
sudo apt install curl

echo "Step2 - Installing MySQL"
echo "Installing MySQL..."
echo "sudo apt install mysql-server"
sudo apt install -y mysql-server

echo "sudo mysql_secure_installation"
echo "VALIDATE PASSWORD PLUGIN => Y"
echo "There are three levels of password validation policy: => 2"
echo "to change password"
echo "sudo mysql"
echo "mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
"

#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04


echo "Step3 - Installing PHP"

echo "Installing PHP..."
echo "sudo apt install php libapache2-mod-php php-mysql"
sudo apt install php7.2 libapache2-mod-php7.2 php7.2-mysql



# Install composer
echo Installing composer...
# https://getcomposer.org/download/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
