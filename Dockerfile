FROM ubuntu:20.04

LABEL description="Building this image for Ubuntu containers"
LABEL maintainer="My first test"

# Executing the command to upddate the package linux operating system
RUN apt-get update && apt-get -y upgrade 

RUN apt-get install -y apache2

# Create a sample web page with index.html
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]

# Start Apache when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]

