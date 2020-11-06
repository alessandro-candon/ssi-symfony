#!/usr/bin/env sh
echo ">>>>>>>>> override with dev files"
rm -rf /etc/nginx/nginx.conf
cp  /nginx.dev.conf /etc/nginx/nginx.conf
rm -rf /etc/nginx/conf.d/default.conf
cp  /symfony.dev.conf /etc/nginx/conf.d/default.conf
echo ">>>>>>>>> run fpm demon"
nginx -g "daemon off;"

