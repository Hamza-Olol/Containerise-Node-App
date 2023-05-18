#!/bin/bash

docker rmi -f $(docker image ls -aq)