#!/bin/bash
echo "begin to start rabbitmq-server..."
docker stop rabbitmq
docker rm rabbitmq
docker run -idt -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 25672:25672 --name rabbitmq rabbitmq
docker stop rabbit-m
docker rm rabbit-m
docker run -d --hostname my-rabbit -p 15672:15672 --name rabbit-m rabbitmq:3-management