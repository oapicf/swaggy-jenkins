-module(openapi_pipeline_impllinks).

-export([encode/1]).

-export_type([openapi_pipeline_impllinks/0]).

-type openapi_pipeline_impllinks() ::
    #{ 'runs' => openapi_link:openapi_link(),
       'self' => openapi_link:openapi_link(),
       'queue' => openapi_link:openapi_link(),
       'actions' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'runs' := Runs,
          'self' := Self,
          'queue' := Queue,
          'actions' := Actions,
          '_class' := Class
        }) ->
    #{ 'runs' => Runs,
       'self' => Self,
       'queue' => Queue,
       'actions' => Actions,
       '_class' => Class
     }.
