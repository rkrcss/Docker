# Base Image of Ubuntu:latest
FROM ubuntu
RUN apt-get update -y \
    && apt-get install vim -y \
    && apt-get install nginx -y

# Creating a Index.html for Nginx Sever
RUN echo 'Hi I am using Nginx Server in Ubuntu Server with a Docker Container' \
    >/var/www/html/index.html

#Exposing the Port Number to HTTPS
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
