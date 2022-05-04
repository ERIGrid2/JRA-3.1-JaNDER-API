# JaNDER

Exposes api defined in https://github.com/ERIGrid2/JRA-3.1-api.

### Environmental variables

Add environmental variables in a .env file

````
JANDER_VERSION=1.1.0
SERVICE_NAME=JaNDER
PROTOCOL=HTTPS # TCP
PORT_RI=6379
HOST_NAME_RI=localhost
PORT_WEB=8080
HOST_WEB=localhost
NAMESPACE=RSE
CLOUD_NODE_ADDRESS=https://ec2-54-72-205-227.eu-west-1.compute.amazonaws.com/redis
````

Add certificate files:
- ca.pem
- XXX.pem
- XXX-key.pem

### Docker-compose structure

Expose redis on YOUR_REDIS_PORT
expose api on YOUR_API_PORT
````yaml
version: "3.9"
services:
  ri-service:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: "ri-name"
    env_file:
      - .env
    ports:
      - {YOUR_REDIS_PORT}:6379
      - {YOUR_API_PORT}:8080
    secrets:
      - main-cert
      - org-cert
      - org-key

secrets:
  # main org certificate
  main-cert:
    file: files/cert/ca.pem
  # your org certificate
  org-cert:
    file: files/cert/RSE.pem
  # main org key
  org-key:
    file: files/cert/RSE-key.pem


````

### RedisRepl
![redisRepl overall architecture](doc/architecture.jpeg)
