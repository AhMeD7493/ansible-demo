FROM Centos:latest
RUN yum install -y httpd \
 zip\
 unzip
Add hello-world.html /var/www/html
WORKDIR /var/www/html
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
