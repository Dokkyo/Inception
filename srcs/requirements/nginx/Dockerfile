FROM alpine:3.15

RUN apk update \
    && apk add vim \
    && apk add openssl curl ca-certificates \
    && printf "%s%s%s%s\n" "@nginx " "http://nginx.org/packages/alpine/v" `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` "/main" | tee -a /etc/apk/repositories \
    && curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub \
    && openssl rsa -pubin -in /tmp/nginx_signing.rsa.pub -text -noout \
    && mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/ \
    && apk add nginx@nginx \
    && openssl req -x509 -nodes \
        -keyout /etc/nginx/naben-za.42.fr.key \
        -out /etc/nginx/naben-za.42.fr.crt \
        -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=E3/CN=naben-za.42.fr/UID=naben-za"

COPY conf/default.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
