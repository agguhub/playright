FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    software-properties-common \
    npm

#RUN pecl install xdebug-3.2.1 \
#    && docker-php-ext-enable xdebug

RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest

RUN npm init playwright@latest

WORKDIR /var/www/html
CMD [ "php","-S","0.0.0.0:8000" ]