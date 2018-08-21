-module(openapi_github_repositories).

-export([encode/1]).

-export_type([openapi_github_repositories/0]).

-type openapi_github_repositories() ::
    #{ '_class' => binary(),
       '_links' => openapi_github_repositorieslinks:openapi_github_repositorieslinks(),
       'items' => list(),
       'lastPage' => integer(),
       'nextPage' => integer(),
       'pageSize' => integer()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'items' := Items,
          'lastPage' := LastPage,
          'nextPage' := NextPage,
          'pageSize' := PageSize
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'items' => Items,
       'lastPage' => LastPage,
       'nextPage' => NextPage,
       'pageSize' => PageSize
     }.
