FROM    alpine:3.15

RUN apk update \
    && apk add vim \
    && apk add mariadb mariadb-common mariadb-client \
    && apk add openrc \
    && openrc \
    && touch /run/openrc/softlevel \
    && /etc/init.d/mariadb setup \
    && service mariadb start

COPY mariadb-server.cnf /etc/my.cnf.d/

RUN chmod 644 /etc/my.cnf.d/mariadb-server.cnf

COPY init.sql /etc/mysql/

EXPOSE 3306

CMD ["mysqld","-uroot","--init-file=/etc/mysql/init.sql"]
