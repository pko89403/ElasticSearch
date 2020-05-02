#!/bin/sh
fb7a4893c2fedocker build --tag=elasticsearch-custom .
docker run -ti -v elastic-data:/usr/share/elasticsearch/data\
    -v /Users/kangseokwoo/ElasticSearch/CUSTOM_DOCKERFILE/elasticsearch/elastic-book-snapshot/book_backup/:/usr/share/elasticsearch/backup/\
    --network elastic-bridge\
    -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node"\
    --name elasticsearch\
    elasticsearch-custom:latest
