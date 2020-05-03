~~~
GET /movie/_doc/_search?q=prdtYear:2017&pretty=true
{
  "sort" : {
    "movieCd" : { "order" : "asc" }
  }
}

GET /movie/_doc/pTzR2XEBS2unOLsPDpYR?pretty=true
POST /movie/_search?q=장편
POST /movie/_search?q=typeNm:장편
POST /movie/_search_shards
{
  "query" : {
    "term" : { "typeNm" : "장편" }
  }
}
~~~