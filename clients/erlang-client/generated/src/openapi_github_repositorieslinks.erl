-module(openapi_github_repositorieslinks).

-export([encode/1]).

-export_type([openapi_github_repositorieslinks/0]).

-type openapi_github_repositorieslinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
