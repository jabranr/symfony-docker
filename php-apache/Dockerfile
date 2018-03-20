FROM php:apache

RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    curl \
    wget \
    git \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite
RUN docker-php-ext-install -j$(nproc) opcache
RUN pecl install xdebug
RUN php -v

WORKDIR /app