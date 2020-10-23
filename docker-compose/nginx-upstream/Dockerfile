FROM nginx:1.19.2
ADD docker-compose/nginx-upstream/nginx.dev.conf /etc/nginx/nginx.conf
ADD docker-compose/nginx-upstream/upstream.dev.conf /etc/nginx/conf.d/upstream.conf
ADD docker-compose/nginx-upstream/entrypoint.sh /entrypoint.sh
