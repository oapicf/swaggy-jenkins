-module(openapi_pipeline_step_impllinks).

-export([encode/1]).

-export_type([openapi_pipeline_step_impllinks/0]).

-type openapi_pipeline_step_impllinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       'actions' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          'actions' := Actions,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       'actions' => Actions,
       '_class' => Class
     }.
