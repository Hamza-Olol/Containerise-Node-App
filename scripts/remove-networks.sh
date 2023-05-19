#!/bin/bash

# This will not delete pre-defined networks such as "bridge" or "host"
docker network rm $(docker network ls)