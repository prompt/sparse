ARG NGINX=1.22

FROM nginx:$NGINX-alpine

WORKDIR /srv

COPY insert-environment-variables.sh /docker-entrypoint.d/99-insert-environment-variables.sh

COPY default.conf /etc/nginx/conf.d/default.conf

RUN chmod +x /docker-entrypoint.d/99-insert-environment-variables.sh
