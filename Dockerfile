FROM debian:9

RUN apt-get update \
    && apt-get install -y nginx

RUN rm /etc/nginx/sites-enabled/default

ADD files/course.conf /etc/nginx/conf.d/course.conf
ADD files/index.html /var/www/course/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

