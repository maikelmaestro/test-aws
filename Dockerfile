FROM node:16-alpine
WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

Expose 3000

CMD [ "npm", "start" ]
