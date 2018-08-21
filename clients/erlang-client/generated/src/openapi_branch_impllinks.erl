-module(openapi_branch_impllinks).

-export([encode/1]).

-export_type([openapi_branch_impllinks/0]).

-type openapi_branch_impllinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       'actions' => openapi_link:openapi_link(),
       'runs' => openapi_link:openapi_link(),
       'queue' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          'actions' := Actions,
          'runs' := Runs,
          'queue' := Queue,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       'actions' => Actions,
       'runs' => Runs,
       'queue' => Queue,
       '_class' => Class
     }.
