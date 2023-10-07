FROM node:16-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
