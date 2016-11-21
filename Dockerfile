FROM nginx:latest

MAINTAINER Shapovalov Alexandr <alex_sh@kodeks.ru>

RUN mkdir /var/log/nginx
ADD nginx.conf /etc/nginx/
ADD site.conf /etc/nginx/sites-available/
ADD setenv.sh /tmp/
RUN chmod +x /tmp/setenv.sh

RUN echo "upstream php-upstream { server php-fpm:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data

WORKDIR /

CMD ["/bin/bash", "-c", "/tmp/setenv.sh ${HOST} && nginx"]

EXPOSE 80 443