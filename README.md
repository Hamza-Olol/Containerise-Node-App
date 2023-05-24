# Docker-demo

This demo app shows a simple user profile app set up using 
- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

## How to get started:

To get started, run the container-build.sh script. This will create a docker network called `mongo-network` and will create 3 containers, a mongodb (http://localhost:8081), mongo-express (http://localhost:27017) and node app container (http://localhost:3000).

## Docker-compose

Build the containers + network using `docker-compose up -d`, the `-d` flag to run the process in a detached format. This will build the necessary containers and have each listening in their respective port as dictated in the `docker-compose.yaml` file. 

If there is an issue finding the nodeapp image, run `docker build -t nodeapp:1.0 .` to have the necessary image available locally and then try `docker-compose up -d` again.

To stop and remove the running containers, run `docker-compose down`.

