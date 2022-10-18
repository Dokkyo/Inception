FROM alpine:3.16.2

WORKDIR .

RUN apk add openrc

VOLUME /sys/fs/cgroup

#COPY conf/default.conf /etc/nginx/conf.d

RUN apk update \
    && apk add vim \
    && apk add openssl curl ca-certificates \
    && printf "%s%s%s%s\n" "@nginx " "http://nginx.org/packages/alpine/v" `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` "/main" | tee -a /etc/apk/repositories \
    && curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub \
    && openssl rsa -pubin -in /tmp/nginx_signing.rsa.pub -text -noout \
    && mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/ \
    && apk add nginx@nginx \
    && openrc \
    && touch /run/openrc/softlevel
#    && rc-service nginx start

#CMD [ "rc-service", "nginx", "start" ]

EXPOSE 80 9000