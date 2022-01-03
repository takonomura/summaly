FROM node:17.3.0 AS base

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . ./
RUN npm run build

CMD ["node", "built/server/index.js"]
