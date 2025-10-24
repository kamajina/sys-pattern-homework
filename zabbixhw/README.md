# Домашнее задание к занятию "`zabbix`" - `grr`


### Задание 1


# wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu24.04_all.deb
# dpkg -i zabbix-release_latest_7.4+ubuntu24.04_all.deb
# apt update
# apt install zabbix-server-pgsql zabbix-frontend-php php8.3-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent
# apt install postgresql

# sudo -u postgres createuser --pwprompt zabbix
# sudo -u postgres createdb -O zabbix zabbix

# zcat /usr/share/zabbix/sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix

Edit file /etc/zabbix/zabbix_server.conf

DBPassword=password


# systemctl restart zabbix-server zabbix-agent apache2
# systemctl enable zabbix-server zabbix-agent apache2


### Задание 2


# wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu24.04_all.deb
# dpkg -i zabbix-release_latest_7.4+ubuntu24.04_all.deb
# apt update
# apt install zabbix-agent
# systemctl restart zabbix-agent
# systemctl enable zabbix-agent



https://pixsafe.online/view?id=Oszwy