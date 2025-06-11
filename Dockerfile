FROM php:8.2-apache


ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install -y \
    cmatrix \
 && docker-php-ext-install mysqli \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite

WORKDIR /var/www/html
