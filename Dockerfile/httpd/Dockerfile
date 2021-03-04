FROM centos:7
RUN yum install httpd -y
ADD index.html /var/www/html/index.html
ADD studentapp.conf /etc/httpd/conf.d/studentapp.conf
CMD httpd -DFOREGROUND
