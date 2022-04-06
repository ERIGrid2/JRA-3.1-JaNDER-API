# JaNDER


## Docker-compose structure

````yaml
version: "3.9"
services:
  jander_ri_2:
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

