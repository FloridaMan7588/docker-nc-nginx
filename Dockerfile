FROM ubuntu:latest

ENV VERSION 24.0.2
ENV DEBIAN_FRONTEND=noninteractive

COPY scripts/dependencies.sh /scripts/dependencies.sh
RUN /scripts/dependencies.sh
COPY scripts/install.sh /scripts/install.sh
COPY scripts/environment.sh /scripts/environment.sh

COPY config/nextcloud.conf /etc/nginx/sites-available/default
COPY config/www.conf /etc/php/8.1/fpm/pool.d/www.conf 

RUN mkdir -p /run/php
COPY config/supervisord.conf /etc/supervisord.conf
COPY scripts/run.sh /run.sh
CMD /run.sh

EXPOSE 80
VOLUME /var/www/nextcloud

LABEL org.opencontainers.image.source = &quot;https://github.com/FloridaMan7588/docker-nc-nginx&quot;
