# Docker-demo

This demo app shows a simple user profile app set up using 
- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

All components are docker-based and following the [docker tutorial](https://www.youtube.com/watch?v=3c-iBn73dDE&t=3371s).

@@ This is a purple colored line @@
## Option 1: Docker build through the cli 


pull mongo and mongo-express images from Dockerhub:

`docker pull mongo` & `docker pull mongo-express`

Build containers from the two images while also: 
    1- naming your containers
    2- configuring the ports to be listening to, host:container.
    3- configuring the environment variables.
    4- configuring the docker network to allow the containers built from the images to connect automatically

this can be done via the following commands:

`docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo` 

`docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express`

set up the app to listen from port 3000, run `node server.js` on the cli.


for more information on how to finish the app if there are missing modules or you need to build your own package.json file then follow this [link](https://expressjs.com/en/starter/installing.html).


now search http://localhost:8080 (for mongo-express) or http://localhost:3000 (for server.js) on your browser to access the UI when the containers are running.

## Option 2: Docker-compose

build docker-compose and build the containers + network using `docker-compose up -d`, to destroy it use `docker-compose down`. An example build can be found in docker-compose.yaml.

now search http://localhost:8080 (for mongo-express) or http://localhost:3000 (for server.js) on your browser to access the UI when the containers are running. If server.js is not running then use the previously mentioned method to set this up.

## Option 3: Dockerfile

You can build your own Docker image from a Dockerfile.