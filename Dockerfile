FROM node:16

COPY package.json package-lock.json* ./
RUN npm ci && npm cache clean --force
COPY ./src ./src

CMD ["npm", "start"]