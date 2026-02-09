FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar solo carpeta public al DocumentRoot
COPY public/ /var/www/html/

# Copiar el resto del proyecto fuera del DocumentRoot
COPY app/ /var/www/app/
COPY config/ /var/www/config/
COPY database/ /var/www/database/

EXPOSE 80
