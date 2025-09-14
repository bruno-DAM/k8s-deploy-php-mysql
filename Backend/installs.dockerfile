FROM php:7.4-apache

WORKDIR /var/www/html
COPY . /var/www/html

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mysqli \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
