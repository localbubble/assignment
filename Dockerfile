FROM node:16.15

RUN mkdir -p /usr/node/app/node_modules && chown -R node:node /home/node/app
USER node

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

WORKDIR /usr/node/app
COPY package.json package-lock.json* /usr/node/app/
RUN npm ci --omit=dev && npm cache clean --force
COPY ./src /usr/node/app/src

EXPOSE 3000

CMD ["npm", "start"]