FROM php:8-fpm

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html

RUN echo "alias art='php artisan'" >> ~/.bashrc
RUN echo "alias migrate='php artisan migrate'" >> ~/.bashrc

RUN echo "alias optimize='php artisan optimize'" >> ~/.bashrc

