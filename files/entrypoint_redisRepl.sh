#!/bin/sh

# start redis
redis-server --daemonize yes

# start replication
./redisRepl-1.2.3-linux-amd64 -CA /run/secrets/main-cert -cert /run/secrets/org-cert -key /run/secrets/org-key -raddr ${HOST_NAME_RI}:${PORT_RI} -nam ${NAMESPACE} -haddr ${REMOTE_ADDRESS} -rc &

# expose API server
node ../api-server/app.js

#tail -f /dev/null
