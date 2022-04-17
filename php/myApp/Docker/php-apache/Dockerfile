FROM php:7.4-apache

RUN apt-get update && \
    apt-get install -y  libpng-dev \
    libpq-dev \
    vim \
    && docker-php-ext-install pdo_mysql


# ソース側のマシンにあるものをImageへコピーするだけというシンプルな機能
COPY ./php.ini /usr/local/etc/php/