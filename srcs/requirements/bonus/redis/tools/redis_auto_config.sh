#!/bin/sh

# Make sure you have installed redis-server
# then modify the redis.conf file
# we modifiy 3 lines in the redis.conf file to make it work with the project
# sed is used to modify the file

# first we bind  the Redis server to the localhost 
# second we set the max memory to 2mb
# third we set the maxmemory-policy to allkeys-lru to make sure that the least recently used keys will be evicted first
if [ ! -f "/etc/redis/redis.conf.bak" ]; then

    #We create the .bak to notify the program if it exists, don't go to the loop anymore
    cp /etc//redis/redis.conf /etc/redis/redis.conf.bak

    sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf
    sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
    sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf

fi
# protect-mode is disabled to make sure that the redis server can be accessed from outside the localhost
redis-server --protected-mode no