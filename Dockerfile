FROM node:17

WORKDIR /usr/src/app
#LABEL org.opencontainers.image.source=https://github.com/leylahosseini/frontend_dev
#LABEL org.opencontainers.image.description="My container image Frontend _dev"
#LABEL org.opencontainers.image.licenses=MIT
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE $PORT

CMD [ "node", "server.js" ]
