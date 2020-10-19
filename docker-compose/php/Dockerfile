FROM php:7.4.2-fpm

ARG APP_NAME
ENV APP_ENV=prod
ENV APP_DEBUG=0
ARG APCU_VERSION=5.1.18

COPY . /var/www/html/$APP_NAME/
WORKDIR /var/www/html/$APP_NAME/

RUN apt-get update && apt-get -y install bash zip unzip libpq-dev libpng-dev \
libicu-dev git-core libonig-dev gnupg libfcgi0ldbl


## PHP.INIs
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini" \
  && cp -R /var/www/html/$APP_NAME/docker-compose/php/*.ini $PHP_INI_DIR/conf.d/

## FPM-CONFIG
COPY docker-compose/php/www.conf /usr/local/etc/php-fpm.d/www.conf

# ADD SSL FIX
RUN mv docker-compose/php/openssl.cnf /etc/ssl/openssl.cnf

RUN docker-php-ext-install mbstring opcache -j$(nproc) gd intl \
 && docker-php-ext-configure opcache --enable-opcache

RUN echo "memory_limit = -1" > /usr/local/etc/php/conf.d/memory_limit.ini
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version
RUN composer global require hirak/prestissimo
RUN composer install --no-ansi --no-dev --no-interaction --no-progress --no-scripts --optimize-autoloader
RUN php bin/console cache:clear
RUN echo "/var/www/html/dktrent/var/cache/prod/srcApp_KernelProdContainer.preload.php" > /usr/local/etc/php/conf.d/php_opcache.ini
