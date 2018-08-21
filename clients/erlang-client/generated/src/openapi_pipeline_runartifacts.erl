-module(openapi_pipeline_runartifacts).

-export([encode/1]).

-export_type([openapi_pipeline_runartifacts/0]).

-type openapi_pipeline_runartifacts() ::
    #{ 'name' => binary(),
       'size' => integer(),
       'url' => binary(),
       '_class' => binary()
     }.

encode(#{ 'name' := Name,
          'size' := Size,
          'url' := Url,
          '_class' := Class
        }) ->
    #{ 'name' => Name,
       'size' => Size,
       'url' => Url,
       '_class' => Class
     }.
