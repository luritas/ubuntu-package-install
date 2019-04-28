#!/bin/bash
echo "Update Package List"
echo "apt update"
sudo apt update -qq

echo "Installing Utility Package..."
# Installing curl
echo "Installing curl..."
sudo apt install -qq curl

# Installing zip
echo "Installing -qq zip..."
sudo apt install -y -qq zip

echo "Installing awscli..."
sudo apt install -y -qq awscli

echo "Step1 - Installing Apache"
echo "sudo apt install -qq apache2"
sudo apt install -y apahce2
# 필요시에 ufw로 방화벽 풀기

echo "Step2 - Installing MySQL"
echo "Installing MySQL..."
echo "sudo apt install mysql-server"
sudo apt install -y mysql-server 

echo "To use password login type"
echo "sudo mysql_secure_installation"
echo "VALIDATE PASSWORD PLUGIN => Y"
echo "There are three levels of password validation policy: => 2"
echo "to change new password"
echo "Remove anonymous users? => y"
echo "Remove test database and access to it? => y"
echo "Disallow root login remotely? => y"
echo "Reload privilege tables now? => y"
echo "sudo mysql"
echo "mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';"
#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04

echo "Step3 - Installing PHP"
echo "Installing PHP..."
echo "sudo apt install -y php libapache2-mod-php php-mysql"
sudo apt install php7.2 libapache2-mod-php7.2 php7.2-mysql php7.2-mbstring php7.2-xml

# Install composer
echo Installing composer...
# https://getcomposer.org/download/
sudo apt install -y -qq composer

# Create Laravel Project
echo "Now! Start Laravel and Create Project"
echo "composer create-project --prefer-dist laravel/laravel [Project Name] \"5.5.*\""
