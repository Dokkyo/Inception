FROM    alpine:3.15

RUN apk update \
    && apk add vim \
    && apk add mariadb mariadb-common mariadb-client \
    && apk add openrc \
    && openrc \
    && touch /run/openrc/softlevel \
    && /etc/init.d/mariadb setup \
    && service mariadb start 

EXPOSE 3306