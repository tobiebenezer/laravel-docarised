FROM php:8.2-fpm-alpine

WORKDIR /var/www/html

COPY ./src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chmod -R 777 /var/www/html

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel
