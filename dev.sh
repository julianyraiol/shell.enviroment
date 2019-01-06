#!/bin/bash

#update system

echo "update =========> system"
sleep 3

apt-get update

#install filezilla

echo "install =========> filezilla"
sleep 3

sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | apt-key add -
apt update
apt install filezilla

# install apache2

apt update
apt-get install apache2

# install mysql
apt-get install mysql-server


# install php
apt-get install php libapache2-mod-php php-mysql php-curl php-gd php-json php-mcrypt php-zip
echo "<?php phpinfo(); ?>" | tee /var/www/html/phpinfo.php

# install phpmyadmin
apt-get install phpmyadmin

# enable apache rewrite module
a2enmod rewrite
service apache2 restart

# install java

apt-get update
apt-get install default-jre
apt-get install default-jdk

apt-get install python-software-properties
add-apt-repository ppa:webupd8team/java
apt-get update

apt-get install oracle-java8-installer
update-alternatives --config java

