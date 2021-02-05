FROM alpine:3.11
RUN apk update
RUN apk add vim
RUN apk add bash
RUN apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php-session
RUN apk add curl
RUN apk add unzip
RUN apk add openrc
RUN apk add nginx
RUN apk add php7-fpm php7-mbstring
RUN apk add wget
RUN apk add libc6-compat
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
COPY srcs/config.inc.php /
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
WORKDIR /root
COPY srcs/file.sh .
RUN rm /etc/nginx/conf.d/default.conf
COPY srcs/default.conf /etc/nginx/conf.d/
EXPOSE 5000
CMD ["bash", "file.sh"] 