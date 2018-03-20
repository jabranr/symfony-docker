FROM php:fpm

RUN docker-php-ext-install -j$(nproc) opcache
RUN pecl install xdebug
RUN php -v

WORKDIR /app