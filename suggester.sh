1、term_suggester
POST library/_search
{
  "suggest":{
  "first_suggestion":{
    "text":"wordl",
    "term":{
      "field":"title"
    }
  }
  }
}

POST library/_search
{
  "suggest": {
    "text" : "wordl fyodro cremi",
    "my-suggest-1" : {
      "term" : {
        "field" : "title"
      }
    },
    "my-suggest-2" : {
       "term" : {
        "field" : "otitle"
       }
    },
     "my-suggest-3" : {
       "term" : {
        "field" : "author"
       }
    }
  }
}

2、phrase_suggester
POST library/_search
{
  "suggest": {
    "my-suggestion": {
      "text": "The orows of Yung Werther",
      "phrase": {
        "field": "title.keyword",
        "highlight": {
          "pre_tag": "<em>",
          "post_tag": "</em>"
        }
      }
    }
  }
}

3、