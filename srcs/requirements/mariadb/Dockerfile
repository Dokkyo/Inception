FROM    alpine:3.16.2

WORKDIR .

RUN apk add openrc

VOLUME /sys/fs/cgroup

RUN apk update \
    && apk add vim \
    && openrc \
    && touch /run/openrc/softlevel \
    && apk add mariadb mariadb-common mariadb-client \
    && /etc/init.d/mariadb setup \
    && rc-service mariadb start \
    && rc-update add mariadb default \
    && rc-status default

EXPOSE 3306