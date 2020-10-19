## SYMFONY SSI ISSUE    

I create this project to make some test about SSI with Symfony and NGINX.

I follow the documentation in this page : https://symfony.com/doc/current/http_cache/ssi.html


# Which is the expected behavior

If you open the page `/home` I put a SSI on a controller/fragment.
I also add a cache of 600 seconds and the timestamp.

The expected  behavior should be : timestamp don't have to change, must be the same due to the cache.

