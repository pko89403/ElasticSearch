~~~
POST /movie/_search?size=0
{
  "aggs" : {
    "genre" : {
      "terms" : {
        "field" : "genreAlt"
      }
    }
  }
}

POST movie/_search?size=0
{
  "aggs" : {
    "genre" : {
      "terms" : {
        "field" : "genreAlt"
      },
      "aggs" : {
        "nation" : {
          "terms" : {
            "field" : "nationAlt"
          }
        }
      }
    }
  }
}
~~~