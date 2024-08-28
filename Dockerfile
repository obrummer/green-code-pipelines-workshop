FROM node:18.20-alpine as builder

WORKDIR /usr/src/app
ENV NODE_ENV=production

COPY src .
COPY package.json .
COPY package-lock.json .
COPY database.sqlite .

RUN npm install

EXPOSE 8080
CMD ["node", "index.js"]
