FROM php:7.4-cli
COPY . /usr/src/app
WORKDIR /usr/src/app
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y zip unzip
RUN composer install
