-module(openapi_pipelinelatest_runartifacts).

-export([encode/1]).

-export_type([openapi_pipelinelatest_runartifacts/0]).

-type openapi_pipelinelatest_runartifacts() ::
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
