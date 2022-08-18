FROM ubuntu 

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN echo 'Hello, docker' > /var/www/index.html

ENTRYPOINT ["/usr/sbin/apache2"]

EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]
