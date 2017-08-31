#!/bin/sh

apt update && apt install wget htop curl nano ssh -y

wget http://repo.zabbix.com/zabbix/3.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_3.2-1+xenial_all.deb
dpkg -i zabbix-release_3.2-1+xenial_all.deb && apt-get update

export DEBIAN_FRONTEND=noninteractive

apt install zabbix-server-mysql zabbix-frontend-php -y
apt install php-mbstring php-bcmath php-xmlwriter -y

mysql -uroot -e "CREATE DATABASE zabbix CHARACTER SET utf8 COLLATE utf8_bin";
mysql -uroot -e "CREATE USER 'zabbix'@'localhost'";
mysql -uroot -e "GRANT ALL ON zabbix.* TO 'zabbix'@'localhost'";

mysql -uroot -e "SHOW DATABASES";
mysql -uroot -e "SELECT host, user FROM mysql.user";
mysql -uroot -e "SHOW GRANTS FOR 'zabbix'@'localhost'";

zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -uroot zabbix

sed -i 's/# php_value date.timezone Europe\/Riga/php_value date.timezone Europe\/Minsk/g' /etc/apache2/conf-enabled/zabbix.conf

service zabbix-server start
service apache2 restart
