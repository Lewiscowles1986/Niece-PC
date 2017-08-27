#!/bin/sh

docker run -d --restart=always --name wekan-db mongo:3.4
docker run -d --restart=always --name wekan --link "wekan-db:db" -e "MONGO_URL=mongodb://db" -e "ROOT_URL=http://0.0.0.0:8000" -p 8000:80 wekanteam/wekan:meteor-1.4

