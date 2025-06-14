FROM Centos:latest
LABEL maintainer="ahmedmetwaly7493@gmail.com"
RUN yum -y update && \
    yum install -y httpd zip unzip && \
    yum clean all
    
COPY hello-world.html /var/www/html/

WORKDIR /var/www/html

CMD ["httpd", "-D", "FOREGROUND"]

EXPOSE 80 22
