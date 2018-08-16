#!/bin/bash

echo "install elasticsearch..."
docker stop elas
docker rm elas
docker run -idt -e MAX_MAP_COUNT=262144 -p 9200:9200 --name elas elasticsearch -Etransport.host=0.0.0.0 -Ediscovery.zen.minimum_master_nodes=1
