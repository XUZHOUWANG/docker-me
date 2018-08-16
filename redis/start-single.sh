#!/bin/bash
echo "redis start ..."

docker stop redis
docker rm  redis

#口令的配置
docker run -idt --name redis -p 6379:6379 redis --requirepass "1Henniubi"
