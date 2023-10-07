FROM node:16-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .


RUN npm install

COPY . .

RUN npm run build

CMD [ "npm", "start" ]


FROM nginx:1.21.1-alpine
COPY --from=0 /usr/src/app/build /usr/share/nginx/html
