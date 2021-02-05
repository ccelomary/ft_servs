FROM alpine:3.11
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client
RUN apk add bash
RUN apk add vim
RUN apk add libc6-compat
RUN apk add openrc wget
WORKDIR /
COPY srcs/script.sh .
ENV PS1='Celomary> '
RUN rm -f /etc/my.cnf.d/mariadb-server.cnf 
COPY srcs/mariadb-server.cnf /etc/my.cnf.d/
COPY srcs/celomary_db.sql /
COPY srcs/phpmyadmin.sql /
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
COPY srcs/script.sh /
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
VOLUME ["/var/lib/mysql"]
EXPOSE 3306
CMD ["bash","script.sh"]
 
