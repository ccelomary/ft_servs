rc-status
touch /run/openrc/softlevel
apk add install bash
curl https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-all-languages.zip > /var/www/myphp.zip
unzip /var/www/myphp.zip -d /var/www
mv /var/www/phpMyAdmin-4.9.5-all-languages /var/www/myphp
mkdir -p /var/www/myphp/tmp/
chmod 777 /var/www/myphp/tmp
mv /config.inc.php /var/www/myphp
rc-service nginx restart
rc-service php-fpm7 restart
nohup /telegraf-1.16.3/usr/bin/telegraf &
clear
echo 'Starting nginx ...'
echo 'Starting PHP FastCGI Process Manager ...'
echo 'Press [ctrl-c] To Quit'
sleep 5;
while true
do
    if [[ -z $(ps | grep nginx | grep -v grep) ]] || [[ -z $(ps | grep php-fpm7 | grep -v grep) ]] || [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep) ]]
    then
        echo "PROCESS BEIGN KILLED"
        break;
    fi
    sleep 5;
done
