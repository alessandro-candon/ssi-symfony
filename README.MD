## SYMFONY SSI ISSUE    

I create this project to make some test about SSI with Symfony and NGINX.

I follow the documentation in this page : https://symfony.com/doc/current/http_cache/ssi.html


# Which is the expected behavior

If you open the page `/home` I put a SSI on a controller/fragment.
I also add a cache of 600 seconds and the timestamp.

The expected  behavior should be : timestamp don't have to change, must be the same due to the cache.

**UPDATE** Solution description on: https://stackoverflow.com/questions/64384870/nginx-ssi-with-symfony-and-php-fpm/64727328#64727328

# When starting symfony, if error appears
*PHP message: PHP Warning:  require(/var/www/html/symfony/vendor/autoload.php): failed to open stream: No such file or directory in /var/www/html/symfony/public/index.php on line 8*

Solution: install vendor with composer inside the container:
```
docker exec ssi_php-fpm_1 composer install
```

