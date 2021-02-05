rc-status
touch /run/openrc/softlevel
apk add bash
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
		echo "SOME IMPORTANT PROCESS BEING KILLED"
		break;
	fi
	sleep 5;
done
