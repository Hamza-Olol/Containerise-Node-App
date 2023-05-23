# Docker-demo

This demo app shows a simple user profile app set up using 
- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

All components are docker-based and following the [docker tutorial](https://www.youtube.com/watch?v=3c-iBn73dDE&t=3371s).

## How to get started:

To get started, run the container-build.sh script. This will create a docker network called `mongo-network` and will create 3 containers, a mongodb (http://localhost:8081), mongo-express (http://localhost:27017) and node app container (http://localhost:3000).

## Docker-compose

build docker-compose and build the containers + network using `docker-compose up -d`, to destroy it use `docker-compose down`. An example build can be found in docker-compose.yaml.

------[IN PROGRES]------
