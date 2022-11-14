FROM    alpine:3.15

RUN apk update \
    && apk add vim \
    && apk add mariadb mariadb-common mariadb-client \
    && apk add openrc \
    && openrc \
    && touch /run/openrc/softlevel \
    && /etc/init.d/mariadb setup \
    && service mariadb start \
    && mysql -e "CREATE USER 'naben-za'@'%' IDENTIFIED BY 'qwerty';" \
    && mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'naben-za'@'%';" \
    && mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'qwerty';" \
    && mysql -uroot --password=qwerty -e "FLUSH PRIVILEGES;"

#CMD ["mysql"]

EXPOSE 3306