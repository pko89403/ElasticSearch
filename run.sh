#!/bin/sh

# pulling the image
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.6.2
# starting a single node cluster with Docker
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.6.2