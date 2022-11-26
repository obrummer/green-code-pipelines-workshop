FROM node:18.12-alpine3.16

WORKDIR /usr/src/app
ENV NODE_ENV=production
EXPOSE 8080

COPY package.json .
COPY package-lock.json .
COPY database.sqlite .

COPY node_modules node_modules
RUN npm prune --omit=dev
COPY src .

CMD ["node", "index.js"]
