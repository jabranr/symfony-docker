FROM php:fpm

RUN useradd -ms /bin/bash php-user
USER php-user

COPY php-fpm.conf /etc/php-fpm.conf
COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /app