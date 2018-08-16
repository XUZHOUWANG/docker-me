#!/bin/bash

echo "start the zookeeper"

docker stop zookeeper
docker rm zookeeper

docker run -idt --name zookeeper -p 2181:2181 zookeeper