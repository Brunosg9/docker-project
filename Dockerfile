FROM nginx:latest

RUN mkdir -p /var/www/html

ENV NGINX_CONF /etc/nginx/conf.d/default.conf

COPY ./nginx.conf $NGINX_CONF

ADD ./app /var/www/html/site2

EXPOSE 80

