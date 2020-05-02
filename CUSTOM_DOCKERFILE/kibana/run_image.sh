#!/bin/sh
#docker build --tag=kibana-custom .
#docker run -ti -p 5601:5601\
#    --network elastic-bridge\
# -e "ELASTICSEARCH_URL=http://0.0.0.0:9200" -e "SERVER_NAME=kibana.example.org"\
#    kibana-custom

docker run --link elasticsearch --network elastic-bridge -p 5601:5601 docker.elastic.co/kibana/kibana:7.6.2