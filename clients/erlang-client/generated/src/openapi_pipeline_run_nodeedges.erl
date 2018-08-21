-module(openapi_pipeline_run_nodeedges).

-export([encode/1]).

-export_type([openapi_pipeline_run_nodeedges/0]).

-type openapi_pipeline_run_nodeedges() ::
    #{ 'id' => binary(),
       '_class' => binary()
     }.

encode(#{ 'id' := Id,
          '_class' := Class
        }) ->
    #{ 'id' => Id,
       '_class' => Class
     }.
