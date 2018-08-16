#!/bin/bash

echo "start the eureka-server ..."

docker stop eureka-server
docker rm eureka-server
docker run -idt --name eureka-server -p 19000:8761 springcloud/eureka