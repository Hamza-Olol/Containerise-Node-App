#!/bin/bash

docker pull mongo
docker pull mongo-express

docker build -t nodeapp:1.0 .

docker network create "my-app"

docker run -it -d -p 3000:3000 --network=my-app --name nodeapp nodeapp:1.0 
docker run -it -d -p 27017:27017 --network=my-app --name mongo mongo
docker run -it -d -p 8080:8081 --network=my-app --name mongo-express mongo-express



