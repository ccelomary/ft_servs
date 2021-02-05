FROM alpine:3.11
RUN apk update
RUN apk add bash vim wget openrc libc6-compat
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
COPY srcs/script.sh /
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf/
RUN rm -rf /etc/influxdb.conf
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
COPY srcs/influxdb.conf /etc
EXPOSE 8086
CMD ["bash", "/script.sh"]