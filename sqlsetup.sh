#!/bin/bash

echo "SQL Setup by Adam"

admin_pass='toor'

#Checks for package updates and instally mysql
sudo apt upgrade -y
sudo apt update -y
sudo apt install unzip mysql-server -y

#Sets up mysql user
sudo mysqladmin -u root password toor
mysql -uroot -ptoor -Bse "CREATE USER 'src1'@'localhost' IDENTIFIED BY 'toor';"
sudo mysqladmin -u src1 -p toor flush-privileges
sudo mysqladmin -usrc1 -ptoor ping

echo "Setup Complete creds are src1:toor"

