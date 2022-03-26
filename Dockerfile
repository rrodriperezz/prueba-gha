FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install openssh-server
RUN useradd testuser
RUN service ssh restart
RUN apt-get -y install nginx
ADD index.html /usr/share/nginx/html
