#check if minikube running
if [[ $(minikube status | grep -c "Running") == 0 ]]
then
    minikube start --driver=virtualbox
    minikube addons enable metrics-server
    minikube addons enable dashboard
	minikube dashboard &
else
    kubectl delete deployment --all
    kubectl delete svc --all
    kubectl delete pvc --all
    eval $(minikube docker-env)
	docker stop $(docker ps)
	docker rm -f $(docker ps -aq)
    docker image rm -f $(docker images -aq)
fi
eval $(minikube docker-env)
sed -E -i '' "s/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}/$(minikube ip)/g" srcs/services_yaml_files/metallb.yml
sed -E -i '' "s/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}/$(minikube ip)/g" srcs/ftps/srcs/script.sh
sed -E -i '' "s/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}/$(minikube ip)/g" srcs/nginx/srcs/default.conf
sed -E -i '' "s/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}/$(minikube ip)/g" srcs/mysql/srcs/celomary_db.sql
sed -E -i '' "s/[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{1,3}\.[0-9]{1,3}/$(minikube ip)/g" srcs/nginx/srcs/sample_page/index.html
# builiding images
docker build -t mysql srcs/mysql
docker build -t wordpress srcs/wordpress
docker build -t phpmyadmin srcs/phpmyadmin
docker build -t influxdb srcs/inflexdb
docker build -t grafana  srcs/grafana
docker build -t nginx srcs/nginx
docker build -t ftps srcs/ftps
# metallb minifests
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
# create deployments and services
kubectl apply -f srcs/services_yaml_files/metallb.yml
kubectl apply -f srcs/services_yaml_files/influxdb.yml
kubectl apply -f srcs/services_yaml_files/ftps.yml
kubectl apply -f srcs/services_yaml_files/grafana.yml
kubectl apply -f srcs/services_yaml_files/mysql.yml
kubectl apply -f srcs/services_yaml_files/wordpress.yml
kubectl apply -f srcs/services_yaml_files/phpmyadmin.yml
kubectl apply -f srcs/services_yaml_files/nginx.yml
