#!/bin/bash

docker pull mongo
docker pull mongo-express

docker build -t nodeapp:1.0 .

# docker network create "my-app"
docker network create "mongo-network"

# docker run -it -d -p 3000:3000 --network=my-app --name nodeapp nodeapp:1.0 
docker run -it -d -p 3000:3000 --network=mongo-network --name nodeapp nodeapp:1.0 
# docker run -it -d -p 27017:27017 --network=my-app --name mongo mongo
docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo    
# docker run -it -d -p 8080:8081 --network=my-app --name mongo-express mongo-express
docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express   

# to exec into the alpine container, run docker exec -it <container ID> sh



