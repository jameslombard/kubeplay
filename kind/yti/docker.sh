#!/bin/bash

docker build -t yti .
docker run -itd --name yti -v ${PWD}:/home yti 
# docker exec -itd yti bash