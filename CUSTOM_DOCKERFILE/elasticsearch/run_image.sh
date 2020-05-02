#!/bin/sh
docker volume create elastic-data
docker volume create elastic-backup
docker build --tag=elasticsearch-custom .
docker run -ti -v elastic-data:/usr/share/elasticsearch/data\
    -v elastic-backup:/usr/share/elasticsearch/backup\
    --network elastic-bridge\
    -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node"\
    --name elasticsearch\
    elasticsearch-custom
