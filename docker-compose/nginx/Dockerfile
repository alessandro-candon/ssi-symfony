FROM nginx:1.19.2
RUN apit update && apt install vim
COPY docker-compose/nginx /
ADD docker-compose/nginx/nginx.dev.conf /etc/nginx/nginx.conf
ADD docker-compose/nginx/symfony.dev.conf /etc/nginx/conf.d/default.conf
