FROM node:16

WORKDIR /usr/src/app

RUN git clone https://github.com/expressjs/express.git .

WORKDIR /usr/src/app/express/examples/hello-world

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]