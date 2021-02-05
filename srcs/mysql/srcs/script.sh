rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -e "CREATE USER 'celomary99'@'%' IDENTIFIED BY 'celomary';"
mysql -e "CREATE DATABASE celomary_db;"
mysql -e "CREATE DATABASE phpmyadmin;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'celomary99'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql < /celomary_db.sql
mysql < /phpmyadmin.sql
nohup /telegraf-1.16.3/usr/bin/telegraf &
rc-service mariadb restart
sleep 5
while true
do
    if [[ -z $(ps | grep mysqld | grep -v grep) ]] || [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep) ]]
    then
        echo "PROCESS BEIGN KILLED"
        break
    fi
    sleep 5;
done;