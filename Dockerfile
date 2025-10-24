FROM ubuntu:20.04

LABEL description="Building this image for Ubuntu containers"
LABEL maintainer="My first test"

# Avoid interactive timezone prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Apache
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y apache2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy website files
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]


