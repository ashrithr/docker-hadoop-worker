FROM ashrithr/hadoop-base:latest

MAINTAINER ashrithr

USER root

ADD bootstrap.sh /etc/bootstrap.sh
ADD files /

RUN mkdir /var/log/hadoop \
    && chown root:root /etc/bootstrap.sh \
    && chmod 700 /etc/bootstrap.sh

# HDFS worker ports
EXPOSE 50010 50075 50020
# YARN ports
EXPOSE 8040 8042 8041