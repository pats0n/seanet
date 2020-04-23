#!/bin/sh

mysql -uroot -e "CREATE DATABASE zabbix CHARACTER SET utf8 COLLATE utf8_bin";
mysql -uroot -e "CREATE USER 'zabbix'@'localhost'";
mysql -uroot -e "GRANT ALL ON zabbix.* TO 'zabbix'@'localhost'";

mysql -uroot -e "SHOW DATABASES";
mysql -uroot -e "SELECT host, user FROM mysql.user";
mysql -uroot -e "SHOW GRANTS FOR 'zabbix'@'localhost'";

zcat /usr/share/zabbix-server-mysql/schema.sql.gz | mysql -uroot zabbix
zcat /usr/share/zabbix-server-mysql/data.sql.gz | mysql -uroot zabbix
zcat /usr/share/zabbix-server-mysql/images.sql.gz | mysql -uroot zabbix

# sed -i 's/# php_value date.timezone Europe\/Riga/php_value date.timezone Europe\/Minsk/g' /etc/apache2/conf-enabled/zabbix.conf

# service zabbix-server start
# service apache2 restart
