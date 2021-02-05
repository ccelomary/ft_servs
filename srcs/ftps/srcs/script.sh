rc-status
touch /run/openrc/softlevel
openssl req -newkey rsa:2048 -x509 -days 365 -sha256 -nodes -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem < input.txt
adduser celomary < user_password
nohup pure-ftpd -j -Y 2 -p 30000:30006 -P 192.168.99.175 &
nohup /telegraf-1.16.3/usr/bin/telegraf &
sleep 5
while true
do
    if [[ -z $(ps | grep pure-ftpd | grep -v grep) ]] || [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep) ]]
    then
        echo "SOME IMPORTANT PROCESS BEIGN KILLED"
        break;
    fi
    sleep 5
done
