# Using an Ubuntu image (defaulting to the latest version) to build our Docker image
FROM ubuntu 
# Updating the container's remote repositories before installing the required packages for the project
RUN apt update && apt upgrade -y
# Preventing the timezone selection bug
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata 
# Installing the required packages for the project, namely git and the Apache2 web service
RUN apt-get install -y -q git apache2 nginx
# The container will run based on the Apache2 service
ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND 
# Renaming the default Apache2 file index.html to index.html.old
RUN mv /var/www/html/index.html /var/www/html/index.html.old 
# Cloning my Git repository with the mini project
RUN git clone https://github.com/mansourka06/my-simple-devops-webapp.git
# Copying the files from the mini web project to the root of my web server
RUN cd my-simple-devops-webapp && cp -r * /var/www/html/

