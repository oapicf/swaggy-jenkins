-module(openapi_pipeline_run_impllinks).

-export([encode/1]).

-export_type([openapi_pipeline_run_impllinks/0]).

-type openapi_pipeline_run_impllinks() ::
    #{ 'nodes' => openapi_link:openapi_link(),
       'log' => openapi_link:openapi_link(),
       'self' => openapi_link:openapi_link(),
       'actions' => openapi_link:openapi_link(),
       'steps' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'nodes' := Nodes,
          'log' := Log,
          'self' := Self,
          'actions' := Actions,
          'steps' := Steps,
          '_class' := Class
        }) ->
    #{ 'nodes' => Nodes,
       'log' => Log,
       'self' => Self,
       'actions' => Actions,
       'steps' => Steps,
       '_class' => Class
     }.
