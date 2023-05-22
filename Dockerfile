# First stage build
FROM node:13-alpine as builder

# # optional to include env variables in the Dockerfile, it is more flexible to have them in the docker-compose file as you can then easily update the env variables
# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=password

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

# Second stage build
FROM node:13-alpine

WORKDIR /home/app

COPY --from=builder /home/app .

RUN npm install

CMD ["node", "server.js"]