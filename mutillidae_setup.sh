#!/bin/bash  
  
sudo apt update
sudo apt install php-xml php-fpm libapache2-mod-php php-mysql php-xml php-gd php-imap php-mysql php-gettext php-curl unzip -y
sudo a2enmod proxy_fcgi setenvif
sudo systemctl restart apache2
sudo a2enconf php7.2-fpm
sudo systemctl reload apache2
sudo systemctl restart apache2.service
sudo service php7.2-fpm restart
sudo systemctl restart mysql

cd /var/www/html

sudo wget transpirenetworks.com/LATEST-mutillidae-2.6.62.zip
sudo updatedb   
sudo chmod 755 LATEST-mutillidae-2.6.62.zip
 