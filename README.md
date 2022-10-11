step 1

- Configured mongo and mongo-express locally, put them in one docker network to communicate. localhost 27017 & 8081 respectivly.
    - docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo
    - docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express
- Using localhost:8081 on local browser, the database UI can be accessed when the docker containers are running.

[docker tutorial](https://www.youtube.com/watch?v=3c-iBn73dDE&t=3371s)

step 2

docker-compose files

- build docker-compose and build the containers + network using `docker-compose up -d`, to destroy it use `docker-compose down`