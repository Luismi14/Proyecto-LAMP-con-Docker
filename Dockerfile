FROM php:8.2-apache

# Instalar cmatrix evitando configuraciones interactivas
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y cmatrix && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./public /var/www/html/
