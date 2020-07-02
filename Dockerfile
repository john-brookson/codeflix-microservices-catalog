# Check out https://hub.docker.com/_/node to select a new base image
FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm i -g @loopback/cli nodemon

USER node

WORKDIR /home/node/app
