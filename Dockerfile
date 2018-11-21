FROM node:8

MAINTAINER sangyeol-kim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]