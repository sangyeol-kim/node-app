FROM node:latest

MAINTAINER kim

RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN npm install

ENV NODE_ENV development

EXPOSE 3000 80

CMD ["node", "app.js"]