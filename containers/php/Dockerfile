FROM php:5.6-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libc-client-dev libkrb5-dev && \        
        
    docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \                     
    docker-php-ext-install -j$(nproc) \
        fileinfo hash mysql imap\
        mysqli pdo pdo_mysql bcmath \
        json mcrypt mbstring
                