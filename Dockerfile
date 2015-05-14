FROM centos:7

#RUN yum install -y ca-certificates
#RUN yum -y update; yum clean all
RUN yum -y install httpd
RUN yum install -y tar

COPY 20.tgz /var/www/html/
RUN cd /var/www/html; tar zxfp 20.tgz 

COPY httpd-foreground /usr/local/bin/
RUN chmod -v +x /usr/local/bin/httpd-foreground

EXPOSE 80
CMD [ "httpd-foreground"]
