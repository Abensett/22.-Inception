
# FROM          is to d the base image for the container
# RUN           is to execute a command in the container
# COPY          is to copy files from the host to the container
# EXPOSE        is to expose a port but to map it to the host, you need to use the -p option



# alpine is a lightweight linux distribution
FROM alpine:3.17

# apk       is the package manager for alpine
# update    is to update the index of packages
# upgrade   is upgrade already installed packages
# add       is to install a package


# No cache allows to not cache the index locally, which is useful for keeping containers small. 
# Avoids the use --update-cache and remove /var/cache/apk/* when done installing packages.
RUN  apk update && \
    apk upgrade && \ 
    apk add --no-cache nginx openssl

# Create the folder for the ssl certificate
RUN mkdir -p /etc/nginx/ssl

# KEY and CERTIFICATE are generated with openssl
# Create the ssl certificate -x509 is the type of certificate
# -nodes is to not encrypt the key (cause we can't enter a password in the dockerfile)
# -out is the output file for the certificate  
# -keyout is the key output file 
# -subj is the subject of the certificate

RUN  openssl req -x509  -nodes \
    -out /etc/nginx/ssl/inception.crt\
    -keyout /etc/nginx/ssl/inception.key\
    -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=42/CN=ft_services"

# create the folder for the nginx configuration
RUN  mkdir -p /var/run/nginx

# allow nginx to write in the folder                      ROOT
RUN chmod 755 /var/www/html
# change the owner of the folder to www-data (nginx user) PRINCIPAL USER
RUN chown -R www-data:www-data /var/www/html

# copy the nginx configuration file from the host to the container
COPY conf/nginx.conf /etc/nginx/nginx.conf

# This launches NGINX 
CMD [ "nginx", "-g", "daemon off;" ]