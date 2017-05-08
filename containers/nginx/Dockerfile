FROM nginx:1.13-alpine
MAINTAINER Avin Grape <carcinogen75@gmail.com>

ADD sites.conf /etc/nginx/conf.d/

EXPOSE 80 443
VOLUME ["/etc/nginx/sites/", "/var/vhosts"]