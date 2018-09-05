
#update system

#!/bin/bash

echo "update =========> system"
sleep 3

apt-get update

clear

#install filezilla

echo "install =========> filezilla"
sleep 3

sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | apt-key add -
apt update
apt install filezilla

clear

#install apache2

apt update
apt-get install apache2

clear

#install mysql
apt-get install mysql-server
mysql -u root -p
mysql> 
exit

clear

#install php
apt-get install php libapache2-mod-php php-mysql php-curl php-gd php-json php-mcrypt php-zip
echo "<?php phpinfo(); ?>" | tee /var/www/html/phpinfo.php

clear

#install phpmyadmin
apt-get install phpmyadmin

# enable apache rewrite module
a2enmod rewrite
service apache2 restart




