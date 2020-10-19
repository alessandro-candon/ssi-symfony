#!/usr/bin/env sh
echo ">>>>>>>>> remove cached files"
rm -rf ${PHP_INI_DIR}/conf.d/php_custom.ini
rm -rf ${PHP_INI_DIR}/conf.d/php_opcache.ini
cp ${PHP_INI_DIR}/php.ini-development ${PHP_INI_DIR}/conf.d/php.ini
echo ">>>>>>>>> run fpm demon"
php-fpm
