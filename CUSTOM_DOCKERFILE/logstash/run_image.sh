#!/bin/sh
docker build --tag=logstash-custom .
docker run --link elasticsearch\
    --network elastic-bridge\
    -v /Users/kangseokwoo/ElasticSearch/CUSTOM_DOCKERFILE/logstash/pipeline:/usr/share/logstash/pipeline\
    -p 5044:5044\
    -p 9600:9600\
    -p 9900:9900\
    logstash-custom:latest