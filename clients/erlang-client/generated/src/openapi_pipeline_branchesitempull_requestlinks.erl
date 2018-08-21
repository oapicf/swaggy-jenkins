-module(openapi_pipeline_branchesitempull_requestlinks).

-export([encode/1]).

-export_type([openapi_pipeline_branchesitempull_requestlinks/0]).

-type openapi_pipeline_branchesitempull_requestlinks() ::
    #{ 'self' => binary(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
