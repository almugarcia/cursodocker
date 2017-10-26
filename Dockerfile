FROM ubuntu:16.04
MAINTAINER Almudena García garciaga@inta.es
RUN apt-get -y update && apt-get install -y vim nginx 
RUN rm -f /etc/nginx/sites-enabled/default
ADD index.html /var/www
ADD curso.conf /etc/nginx/conf.d/curso.conf
EXPOSE 80
VOLUME /var/www 
CMD ["nginx", "-g", "daemon off;"]
