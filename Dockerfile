# Copied from https://github.com/JetBrains/phpstorm-docker-images/tree/master/php-73-apache-xdebug-30
FROM php:7.3-nginx
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini