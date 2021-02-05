FROM alpine:3.11
RUN apk update
RUN apk add openrc
RUN apk add nginx
RUN apk add openssl
RUN apk add openssh-server
RUN apk add bash
RUN apk add vim
RUN apk add libc6-compat
RUN apk add wget
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
WORKDIR /root
COPY srcs/script.sh .
COPY srcs/input.txt .
COPY srcs/user_password .
RUN rm /etc/nginx/conf.d/default.conf
COPY srcs/default.conf /etc/nginx/conf.d
COPY srcs/sample_page ./sample_page
CMD ["bash", "script.sh"]