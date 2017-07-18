FROM php:7-apache

RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    curl \
    wget \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite
RUN usermod -aG www-data root

COPY php.ini /usr/local/etc/php/php.ini
COPY apache.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /app