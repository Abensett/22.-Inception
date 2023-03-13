
# FROM          is to d the base image for the container
# RUN           is to execute a command in the container
# COPY          is to copy files from the host to the container
# EXPOSE        is to expose a port but to map it to the host, you need to use the -p option

# alpine is a lightweight linux distribution

# apk       is the package manager for alpine
# update    is to update the index of packages
# upgrade   is upgrade already installed packages
# add       is to install a package


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

# Create the folder for the ssl certificate and the wordpress folder
RUN mkdir -p /etc/nginx/ssl /var/www/wordpress


# KEY and CERTIFICATE are generated with openssl
# Create the ssl certificate -x509 is the type of certificate
# -nodes is to not encrypt the key (cause we can't enter a password in the dockerfile)
# -out is the output file for the certificate  
# -keyout is the key output file 
# -subj is the subject of the certificate  C = Country, ST = State, L = Locality, O = Organization, OU = Organizational Unit, CN = Common Name
# chmod 0600 is to change the permission of the key and the certificate to 600 (only the owner can read and write)
RUN  openssl req -x509  -nodes \
    -out /etc/ssl/certs/inception.crt\
    -keyout /etc/ssl//private/inception.key\
    -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=abensett" && \
    chmod 0600 /etc/ssl/private/inception.key /etc/ssl/certs/inception.crt;

# create the folder for the nginx configuration
RUN  mkdir -p /var/run/nginx

# copy the nginx configuration file from the host to the container
COPY ./conf/nginx.conf /etc/nginx/http.d/ 
COPY ./tools/index.html /var/www/html/
 

# allow nginx to write in the folder ROOT it is safer to do it after the copy
RUN chmod 755 /var/www/html
# change the owner of folders to www-data (nginx user) PRINCIPAL USER
RUN adduser -D -g 'www' www &&\
    chown -R www:www /var/www/html /var/www/wordpress

# EXPOSE  is to expose a port but to map it to the host, you need to use the -p option
# it is not mandatory to expose the port but it is a good practice
EXPOSE 443

# This launches NGINX 
# -g is for global directives
# daemon off; is to run nginx in the foreground DISK AND EXECUTION MONITORE
# they gotta be stoped with systemctl stop nginx or service nginx stop (depending on the os)
CMD [ "nginx", "-g", "daemon off;" ]