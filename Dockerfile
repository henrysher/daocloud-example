FROM iwsaas/centos:7.1
MAINTAINER Henry Huang <henry.s.huang@gmail.com>

RUN yum -y install ca-certificates; yum clean all
RUN yum -y update; yum clean all
RUN yum -y install httpd; yum clean all

COPY httpd-foreground /usr/local/bin/
RUN chmod -v +x /usr/local/bin/httpd-foreground
COPY data/qwscjs.pdf /var/www/html/

EXPOSE 80
CMD [ "httpd-foreground"]
