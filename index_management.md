DELETE /movie
PUT /movie
{
  "settings": {
    "number_of_shards": 3,
    "number_of_replicas": 2
  },
  "mappings" : {
    "properties" : {
      "movieCd" : { "type" : "integer" },
      "movieNm" : { "type" : "text" },
      "movieNmEn" : { "type" : "text" },
      "prdtYear" : { "type" : "integer" },
      "openDt" : { "type" : "date" },
      "typeNm" : { "type" : "keyword" },
      "prdtStatNm" : { "type" : "keyword" },
      "nationAlt" : { "type" : "keyword" },
      "genreAlt" : { "type" : "keyword" },
      "repNationNm" : { "type" : "keyword" },
      "repGenreNm" : { "type" : "keyword"  }
    }
  }
}
GET /movie