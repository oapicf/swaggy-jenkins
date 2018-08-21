-module(openapi_pipeline_branchesitempull_request).

-export([encode/1]).

-export_type([openapi_pipeline_branchesitempull_request/0]).

-type openapi_pipeline_branchesitempull_request() ::
    #{ '_links' => openapi_pipeline_branchesitempull_requestlinks:openapi_pipeline_branchesitempull_requestlinks(),
       'author' => binary(),
       'id' => binary(),
       'title' => binary(),
       'url' => binary(),
       '_class' => binary()
     }.

encode(#{ '_links' := Links,
          'author' := Author,
          'id' := Id,
          'title' := Title,
          'url' := Url,
          '_class' := Class
        }) ->
    #{ '_links' => Links,
       'author' => Author,
       'id' => Id,
       'title' => Title,
       'url' => Url,
       '_class' => Class
     }.
