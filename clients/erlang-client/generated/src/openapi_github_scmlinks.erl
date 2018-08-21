-module(openapi_github_scmlinks).

-export([encode/1]).

-export_type([openapi_github_scmlinks/0]).

-type openapi_github_scmlinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
