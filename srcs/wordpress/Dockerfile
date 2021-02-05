FROM alpine:3.11
RUN apk update
RUN apk add nginx
RUN apk add vim
RUN apk add libc6-compat
WORKDIR /root
RUN apk add openrc
COPY srcs/file.sh .
WORKDIR /var/www
RUN wget https://wordpress.org/latest.tar.gz
RUN apk add php7-fpm php7-mysqli php7-pdo_mysql
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl php7-cgi php7-mbstring
RUN apk add php7-pear php7-dev php7-zip php7-mcrypt php7-xml
RUN apk add ssmtp tzdata php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc
RUN apk add php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-pdo_pgsql
RUN apk add php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader
RUN apk add php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session
RUN tar -xvf latest.tar.gz
WORKDIR /
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar -xvf telegraf-1.16.3_linux_amd64.tar.gz
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
WORKDIR /root
RUN apk add bash
COPY srcs/default.conf /etc/nginx/conf.d/default.conf
COPY srcs/wp-config.php /var/www/wordpress
CMD ["bash", "file.sh"]