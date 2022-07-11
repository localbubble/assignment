FROM node:16.15

ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

WORKDIR /usr/app
COPY package.json package-lock.json* /usr/app/
RUN npm ci --omit=dev && npm cache clean --force
COPY ./src /usr/app/src

CMD ["npm", "start"]