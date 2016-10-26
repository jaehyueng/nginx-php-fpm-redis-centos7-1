FROM centos:centos7
MAINTAINER ¡÷¿Á«¸<jaehyueng@wellbia.com>

RUN yum -y install epel-release; yum clean all
RUN yum -y update; yum clean all

RUN yum -y install nginx; yum clean all
COPY /nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

RUN mkdir -p /var/www/html/
VOLUME ["/var/www/html/"]

CMD ["/usr/sbin/nginx"]