FROM debian:buster

# Set environment variables
ENV ADMINER_VERSION=4.8.1 \
    DB_PORT=3306

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    ca-certificates \
    php \
    php-mysql \
    php-mbstring

# Download and install Adminer
RUN mkdir /adminer && \
    wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /adminer/index.php

# Set the working directory to /adminer
WORKDIR /adminer

# Expose port 8080
EXPOSE 8080

# Start PHP server with Adminer
# -S is used to start a web server
# "0.0.0.0:8080" is the address and port to listen on
# "index.php" is the file to serve
CMD ["php", "-S", "0.0.0.0:8080", "index.php"]