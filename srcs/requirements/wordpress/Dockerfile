FROM alpine:3.15

RUN adduser -D www \
    && addgroup -S www www

RUN apk update \
    && apk add vim \
    && apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype \
    && sed -i "s|;listen.owner\s*=\s*nobody|listen.owner = www|g" /etc/php7/php-fpm.d/www.conf \
    && sed -i "s|;listen.group\s*=\s*nobody|listen.group = www|g" /etc/php7/php-fpm.d/www.conf \
    && sed -i "s|;listen.mode\s*=\s*0660|listen.mode = 0660|g" /etc/php7/php-fpm.d/www.conf \
    && sed -i "s|user\s*=\s*nobody|user = www|g" /etc/php7/php-fpm.d/www.conf \
    && sed -i "s|group\s*=\s*nobody|group = www|g" /etc/php7/php-fpm.d/www.conf \
    && sed -i "s|;log_level\s*=\s*notice|log_level = notice|g" /etc/php7/php-fpm.d/www.conf \
    && echo 'rc_provide="loopback net"' >> /etc/rc.conf
    # && apk add openrc \
    # && openrc \
    # && touch /run/openrc/softlevel
    #&& service php-fpm7 start

#COPY index.php /var/www/html

CMD [ "sleep", "infinity"]