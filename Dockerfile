FROM node:16

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

EXPOSE 1337

RUN yarn build

CMD yarn start
