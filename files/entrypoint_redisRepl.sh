#!/bin/sh
# start redis
redis-server --daemonize yes

# start redis Repl
if [ $PROTOCOL = HTTPS ]
then
  ./redisRepl-1.2.2-linux-amd64 -CA /run/secrets/main-cert -cert /run/secrets/org-cert -key /run/secrets/org-key -raddr ${HOST_NAME_RI}:${PORT_RI} -nam ${NAMESPACE} -haddr ${REMOTE_ADDRESS} -rc &
else
  ./redisReplTcp-1.2.2-linux-amd64 -laddr ${HOST_NAME_RI}:${PORT_RI} -raddr ${REMOTE_ADDRESS} -nam ${NAMESPACE} -rc &
fi

# expose API server
node ../api-server/app.js

#tail -f /dev/null
