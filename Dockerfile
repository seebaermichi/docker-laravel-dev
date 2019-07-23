FROM php:7.2-apache

LABEL maintainer="Michael Becker"

COPY ./.docker/php/php.ini /user/local/etc/php
COPY ./src /var/www/html
COPY ./.docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

RUN docker-php-ext-install pdo_mysql \
    && a2enmod rewrite negotiation
