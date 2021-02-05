FROM alpine:3.11
RUN apk update
RUN apk add openrc
RUN apk add openssl
RUN apk add bash
RUN apk add vim
RUN apk add curl
RUN apk add libc6-compat
RUN apk add su-exec wget
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.3_linux_amd64.tar.gz
RUN tar xvf telegraf-1.16.3_linux_amd64.tar.gz
RUN rm -f /telegraf-1.16.3/etc/telegraf/telegraf.conf
COPY srcs/telegraf.conf /telegraf-1.16.3/etc/telegraf
ENV TELEGRAF_CONFIG_PATH="/telegraf-1.16.3/etc/telegraf/telegraf.conf"
ENV PS1='Celomary> '
RUN curl https://dl.grafana.com/oss/release/grafana-7.3.1.linux-amd64.tar.gz > grafana.tar.gz
RUN tar -xvf grafana.tar.gz
RUN mv grafana-7.3.1 grafana
RUN rm -rf /grafana/data/grafana.db
COPY srcs/grafana.db /grafana/data/grafana.db
WORKDIR /
EXPOSE 3000
COPY srcs/script.sh /
CMD ["bash", "/script.sh"]
