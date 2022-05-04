FROM node:alpine as restapi

# Create app directory
WORKDIR /usr/src/app
RUN chmod -R 777 /usr/src/app

WORKDIR /usr/src/app/api-server
# Install app dependencies
COPY ./api-server/package.json .
RUN npm install --production

COPY ./api-server/app.js .
COPY ./api-server/schema.js .

# CMD tail -f /dev/null

FROM redis:latest

RUN apt-get update -yq \
   && apt-get install curl gnupg -yq \
   && curl -sL https://deb.nodesource.com/setup_10.x | bash \
   && apt-get install nodejs -yq \
   && apt-get install -y procps \
   && apt-get clean -y

WORKDIR /home

COPY ./files/redisRepl-1.2.2-linux-amd64 ./files/
COPY ./files/redisReplTcp-1.2.2-linux-amd64 ./files/
COPY ./files/entrypoint_redisRepl.sh ./files/

COPY --from=restapi /usr/src/app/ .

WORKDIR /home/files
ENTRYPOINT ["./entrypoint_redisRepl.sh"]