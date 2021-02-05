FROM alpine:3.11
RUN apk update
RUN apk add openrc bash openssl
RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
RUN apk add wget
RUN apk add libc6-compat
WORKDIR /
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
COPY srcs/script.sh /
COPY srcs/input.txt /
COPY srcs/user_password /
CMD ["bash", "script.sh"]