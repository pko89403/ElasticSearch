~~~json
POST _analyze
{
  "analyzer": "standard",
  "text" : "우리나라가 좋은나라, 대한민국 화이팅"
}
~~~
~~~json
PUT /movie_analyzer
{
  "settings" : {
    "index" : {
      "number_of_shards" : 5,
      "number_of_replicas" : 1
    }, 
    "analysis": {
      "analyzer": {
        "custom_movie_analyer" : {
          "type" : "custom",
          "char_filter" : ["html_strip"],
          "tokenizer" : "standard",
          "filter" : ["lowercase"]
        }        
      }
    }
  }
}

POST movie_analyzer/_analyze
{
  "text" : "<B>Elasticsearch</B> is cool"
}
~~~
~~~json
PUT /movie_analyzer
{
  "settings" : {
    "index" : {
      "number_of_shards" : 5,
      "number_of_replicas" : 1
    }, 
    "analysis": {
      "analyzer": {
        "movie_lower_test_analyzer" : {
          "type" : "custom",
          "tokenizer" : "standard",
          "filter" : ["lowercase"]
        },
        "movie_stop_test_analyzer" : {
          "type" : "custom",
          "tokenizer" : "standard",
          "filter" : [
            "lowercase",
            "english_stop"
          ]
        }
      },
      "filter" : {
        "english_stop" : {
          "type" : "stop",
          "stopwords" : "_english_"
        }
      }
    }
  },
  "mappings": {
    "properties" : {
      "title" : {
        "type" : "text",
        "analyzer" : "movie_stop_test_analyzer",
        "search_analyzer" : "movie_lower_test_analyzer"
      }
    }
  }
}

PUT movie_analyzer/_doc/1
{
  "title" : "Harry Potter and the Chamber of Secrets"
}

GET movie_analyzer/_doc/1


POST movie_analyzer/_search
{
  "query" : {
    "query_string": {
      "default_field": "AND",
      "query": "Chamber of Secrets"
    }
  }
}
~~~
~~~json
PUT movie_html_analyzer
{
  "settings": {
    "analysis": {
      "analyzer": {
        "html_strip_analyzer" : {
          "tokenizer" : "keyword",
          "char_filter" : [ "html_strip_char_filter"]
        }
      },
      "char_filter": {
        "html_strip_char_filter" : {
          "type" : "html_strip",
          "escaped_tags" : [ "b" ]
        }
      }
    }
  }
}

POST movie_html_analyzer/_analyze
{
  "analyzer": "html_strip_analyzer",
  "text" : "<span>Harry Potter</span> and the <b>Chamber</b> of Secretes"
}
~~~
~~~json
PUT movie_ngram_analyer
{
  "settings": {
    "analysis": {
      "analyzer": {
        "ngram_analyzer" : {
          "tokenizer" : "ngram_tokenizer"
        }
      },
      "tokenizer": {
        "ngram_tokenizer" : {
          "type" : "ngram",
          "min_gram" : 3,
          "max_gram" : 3,
          "token_chars" : [
            "letter"
          ]
        }
      }
    }
  }
}

POST movie_ngram_analyer/_analyze
{
  "tokenizer": "ngram_tokenizer",
  "text": "Harry Potter and the Chamber of Secretes"
}
~~~
~~~json
PUT movie_stem_analyzer
{
  "settings" : {
    "analysis": {
      "analyzer": {
        "stemmer_eng_analyzer" : {
          "tokenizer" : "standard",
          "filter" : [
            "lowercase",
            "stemmer_eng_filter"
          ]
        }
      },
      "filter": {
        "stemmer_eng_filter" : {
          "type" : "stemmer",
          "name" : "english"
        }
      }
    }
  }
}

POST movie_stem_analyzer/_analyze
{
  "analyzer": "stemmer_eng_analyzer",
  "text" : "Harry Potter and the Chamber of Secrets"
}
~~~