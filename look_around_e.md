PUT movie_kibana_execute/_doc/1
{
  "message":"helloworld"
}



GET movie_kibana_execute/_search
{
  "query" : {
    "match_all": {}
  }
}

PUT /movie/_doc/1
{
  "movieCd": "1",
  "movieNm": "살아남은 아이",
  "movieNmEn" : "Last Child",
  "prdtYear" : "2017",
  "openDt" : "",
  "typeNm" :  "장편",
  "prdtStatNm" : "기타",
  "nationAlt" :  "한국",
  "genreAlt" : "드라마,가족",
  "repNationNm" : "한국",
  "repGenreNm" : "드라마"
}

GET /movie
DELETE  /movie  
PUT /movie
{
  "settings" : {
    "number_of_shards": 3, 
    "number_of_replicas": 2
  },
  "mappings": {
    "_doc": {
      "properties": {
        "movieCd" : { "type" : "integer" },
        "movieNm" : { "type" : "string" },
        "movieNmEn" : { "type" : "integer" },
        "prdtYear" : { "type" : "integer" },
        "openDt" :  {  "type" :  "integer" },
        "typeNm"  :  { "type" : "keyword" },
        "prdtStatNm" : { "type" : "keyword" },
        "nationAlt" : { "type" : "keyword" },
        "genreAlt" :  { "type" : "keyword" },
        "repNationNm" : { "type" :  "keyword" },
        "repGenreNm" : { "type" : "keyword" }
      }
    }
  }
}