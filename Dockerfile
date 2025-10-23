FROM centos:7

LABEL description="Building this image for Ubuntu containers"
LABEL maintainer="My first test"

# Executing the command to upddate the package linux operating system
RUN yum -y update && yum clean all 

RUN yum -y install httpd 

COPY index.html /var/www/html/

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]

CMD [ "-D", "FOREGROUND" ] 
