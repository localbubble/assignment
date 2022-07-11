FROM node:16.16

WORKDIR /usr/app
COPY package.json package-lock.json* /usr/app/
RUN npm ci && npm cache clean --force
COPY ./src /usr/app/src

CMD ["npm", "start"]