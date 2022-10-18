FROM alpine:3.16.2
WORKDIR .
RUN apk update \
    &&  mkdir -p /usr/share/webapps/ \
    && cd /usr/share/webapps/ \
    && wget http://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz \ 
    && rm latest.tar.gz \
    && cd /var/www/localhost/htdocs/ \
    && ln -s /usr/share/webapps/wordpress wordpress \
    && apk add php php-fpm
