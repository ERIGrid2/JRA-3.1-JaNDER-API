#!/bin/sh
# start redis
redis-server --daemonize yes

# this command will be exposed as a REST service
./redisRepl-1.2.2-linux-amd64 -CA /run/secrets/rse-cert -cert /run/secrets/org-cert -key /run/secrets/org-key -raddr localhost:6379 -nam RSE -haddr https://ec2-54-72-205-227.eu-west-1.compute.amazonaws.com/redis -rc &

node ../api-server/app.js

#tail -f /dev/null
