FROM centos:7
RUN yum install httpd -y
RUN echo Hello > /var/www/html/index.html
COPY run.sh /
RUN chmod +x /run.sh
CMD /run.sh
