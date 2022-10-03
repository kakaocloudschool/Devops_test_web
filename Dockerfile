FROM centos:7
RUN yum -y update
RUN yum -y install httpd
COPY ./src/ /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]