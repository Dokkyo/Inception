FROM alpine:3.15

RUN adduser -D www \
    && addgroup -S www www

RUN apk update \
    && apk add vim \
    && apk add php7-fpm php7-phar php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype \
    && apk add wget \
    && apk add mariadb-client \
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod 755 wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY script.sh /
COPY www.conf /etc/php7/php-fpm.d/

RUN chmod 777 script.sh

EXPOSE 9000

CMD ["/bin/sh", "script.sh"]