# Base Image 
FROM httpd:2.4

# Remove existing contents of the directory
RUN rm -rf /usr/local/apache2/htdocs/*

# Install Git
RUN apt-get update && apt-get install -y git

# Clone the repository into the container
RUN git clone https://github.com/udayreddy1996/ecomm.git /usr/local/apache2/htdocs/

# Expose Apache Port
EXPOSE 80
