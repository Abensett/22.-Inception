# This time I use debian, see nginx for alpine image
FROM debian:buster

RUN		
# rm apt/lists/ ensures that the system is clean and free of old, unnecessary packages and data.
RUN		apt-get update && \
        apt-get install -y redis && \
        rm -rf /var/lib/apt/lists/*

# copy the redis configuration file from the host to the container
# /tmp is the temporary folder
COPY ./tools/redis_auto_config.sh redis.sh

# default redis port
EXPOSE 6379

# run the redis server
CMD ["sh", "redis.sh"]