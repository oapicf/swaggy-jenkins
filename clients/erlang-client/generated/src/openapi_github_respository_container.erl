-module(openapi_github_respository_container).

-export([encode/1]).

-export_type([openapi_github_respository_container/0]).

-type openapi_github_respository_container() ::
    #{ '_class' => binary(),
       '_links' => openapi_github_respository_containerlinks:openapi_github_respository_containerlinks(),
       'repositories' => openapi_github_repositories:openapi_github_repositories()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'repositories' := Repositories
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'repositories' => Repositories
     }.
