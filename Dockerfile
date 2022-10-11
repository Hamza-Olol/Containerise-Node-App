# image from Dockerhub, easier than to just install an OS like alpine then run commands to install node.
FROM node:13-alpine

# optional to include env variables in the Dockerfile, it is more flexible to have them in the docker-compose file as you can then easily update the env variables
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# Creates a home/app directory in the container.
RUN mkdir -p /home/app

# Copies ./app from your local host to the home/app directory of the container.
COPY ./app /home/app

# set default dir to home/app so that next commands executes in the /home/app dir.
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR.
RUN npm install

# no need for /home/app/server.js because of WORKDIR, this command is the same as `node server.js` on the cli.
CMD ["node", "server.js"]