#!/bin/bash

echo "start the solr ..."
docker stop my_solr
docker rm my_solr
docker run --name my_solr -d -p 8983:8983 -t solr


# create the core
docker exec -it --user=solr my_solr bin/solr create_core -c gettingstarted