#!/bin/bash

echo "install elasticsearch..."
docker stop elas
docker rm elas
docker run -d --name elas -p9200:9200 elasticsearch -Etransport.host=0.0.0.0 -Ediscovery.zen.minimum_master_nodes=1
