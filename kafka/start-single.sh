#!/bin/bash

echo "start the kafka..."

docker run  -idt  -p 9092:9092 --env ADVERTISED_HOST=`docker-machine ip \`docker-machine active\`` --env ADVERTISED_PORT=9092 spotify/kafka