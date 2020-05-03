~~~ 
GET /movie
POST /movie/_doc/1
{
  "movieCd" : "1",
  "movieNm" : "살아남은 아이",
  "movieNmEn" : "Last Child",
  "prdtYear" : "2017",
  "openDt" : "2017-10-20",
  "typeNm" : "장편",
  "prdtStatNm" : "기타",
  "nationAlt" : "한국",
  "genreAlt" : "드라마, 가족",
  "repNationNm" : "한국",
  "repGenreNm" : "드라마"
}
GET /movie/_doc/1
DELETE /movie/_doc/1
POST /movie/_doc
{
  "movieCd" : "1",
  "movieNm" : "살아남은 아이",
  "movieNmEn" : "Last Child",
  "prdtYear" : "2017",
  "openDt" : "2017-10-20",
  "typeNm" : "장편",
  "prdtStatNm" : "기타",
  "nationAlt" : "한국",
  "genreAlt" : "드라마, 가족",
  "repNationNm" : "한국",
  "repGenreNm" : "드라마"
}
GET /movie/_doc/
~~~