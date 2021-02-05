apk add influxdb
rc-status
touch /run/openrc/softlevel
nohup influxd run &
nohup /telegraf-1.16.3/usr/bin/telegraf &
sleep 5;
while true
do
    if [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep ) ]] || [[ -z $(ps | grep influxd | grep -v grep) ]]
    then
        echo "SOME IMPORTANT PROCESS BEIGN KILLED"
        break
    fi
    sleep 5;
done;
 