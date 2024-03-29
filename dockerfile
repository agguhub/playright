FROM php:8.2-cli
RUN apt-get update && \ 
    pecl install xdebug-3.2.1 \
    && docker-php-ext-enable xdebug
WORKDIR /var/www/html
CMD [ "php","-S","0.0.0.0:8000" ]