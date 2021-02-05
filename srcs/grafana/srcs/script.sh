rc-status
touch /run/openrc/softlevel
nohup /telegraf-1.16.3/usr/bin/telegraf &
addgroup -S grafana
adduser -G grafana -S grafana
chown -R grafana:grafana /grafana
cd /grafana
nohup su-exec grafana bin/grafana-server web &
sleep 5
while true
do
    if [[ -z $(ps | grep /telegraf-1.16.3/usr/bin/telegraf | grep -v grep) ]] || [[ -z $(ps | grep bin/grafana-server | grep -v grep) ]]
    then
        echo "SOME IMPORTANT PROCESS BEIGN KILLED"
        break;
    fi
    sleep 5;
done;
