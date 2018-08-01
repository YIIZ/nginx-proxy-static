FROM node:alpine

RUN apk add --no-cache rsync

RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp

VOLUME /nginx
ENTRYPOINT ["/myapp/docker-entrypoint.sh"]
