# First stage build
FROM node:13-alpine as builder

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

# Second stage build
FROM node:13-alpine

WORKDIR /home/app

COPY --from=builder /home/app .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]