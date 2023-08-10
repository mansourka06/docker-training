# syntax=docker/dockerfile:1

FROM ubuntu
MAINTAINER mansourka (kamansour06@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80

# Add the webapp files to /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/mansourka06/devops-website.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]