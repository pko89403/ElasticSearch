# Elastic Search
path.repo에서 설정한 물리적인 스냅샷 데이터를 엘라스틱서치로 인식 ( 스냅샷 import )
~~~sh
curl -XPUT 'http://0.0.0.0:9200/_snapshot/javacafe' -H 'Content-Type: application/json' -d '{
"type" : "fs",
"settings" : {
"location" : "/usr/share/elasticsearch/backup/search_example",
"compress" : true
}
}'
~~~