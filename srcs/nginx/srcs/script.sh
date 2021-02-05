rc-status
touch /run/openrc/softlevel
mkdir -p /etc/ssl
mv /root/sample_page /var/www/sample_page
openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout /etc/ssl/nginx_cert.key -out /etc/ssl/nginx_cert.crt < input.txt
adduser celomary < user_password
clear
rc-service nginx restart
ssh-keygen -A
rc-service sshd restart
nohup /telegraf-1.16.3/usr/bin/telegraf &
sleep 5;

while true
do
    if [[ -z $(ps | grep nginx | grep -v grep) ]] || [[ -z $(ps | grep sshd | grep -v grep) ]] || [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep) ]]
    then
        echo "SOME PROCESS BEIGN KILLED"
        break;
    fi
    sleep 5;
done;
