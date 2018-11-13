FROM node:8

MAINTAINER kim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV development

EXPOSE 3000

CMD [ "node", "app.js" ]