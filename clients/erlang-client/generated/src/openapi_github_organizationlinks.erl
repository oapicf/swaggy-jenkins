-module(openapi_github_organizationlinks).

-export([encode/1]).

-export_type([openapi_github_organizationlinks/0]).

-type openapi_github_organizationlinks() ::
    #{ 'repositories' => openapi_link:openapi_link(),
       'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'repositories' := Repositories,
          'self' := Self,
          '_class' := Class
        }) ->
    #{ 'repositories' => Repositories,
       'self' => Self,
       '_class' => Class
     }.
