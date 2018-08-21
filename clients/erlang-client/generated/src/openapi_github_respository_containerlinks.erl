-module(openapi_github_respository_containerlinks).

-export([encode/1]).

-export_type([openapi_github_respository_containerlinks/0]).

-type openapi_github_respository_containerlinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
