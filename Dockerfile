FROM node:8

MAINTAINER yorr / github: https://github.com/sangyeol-kim/docker_node_test

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV development

EXPOSE 4567

CMD [ "node", "app.js" ]