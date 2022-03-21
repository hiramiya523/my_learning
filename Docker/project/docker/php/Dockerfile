# php-fpmはPHPをCGIとして実行するためのツール
FROM php:7.4.9-fpm

COPY php.ini /usr/local/etc/php/

# OS（dockerイメージ）のupdateする
RUN apt update \
# phpのコンテナからmysqlに接続するツールをインストール
  && apt install -y default-mysql-client \
# docker-php-ext-installはPHP標準拡張機能のインストーラー。
# pdo_mysqlはPHPからMySQLに接続するための拡張機能。
  && docker-php-ext-install pdo_mysql

# カレントディレクトリを/var/wwwにする
WORKDIR /var/www 
