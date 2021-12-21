FROM centos:7
RUN yum install httpd -y
RUN echo ok >/var/www/html/health.html
CMD httpd -DFOREGROUND
