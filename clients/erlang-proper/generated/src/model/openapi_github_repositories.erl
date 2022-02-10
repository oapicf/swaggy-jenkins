-module(openapi_github_repositories).

-include("openapi.hrl").

-export([openapi_github_repositories/0]).

-export([openapi_github_repositories/1]).

-export_type([openapi_github_repositories/0]).

-type openapi_github_repositories() ::
  [ {'_class', binary() }
  | {'_links', openapi_github_repositorieslinks:openapi_github_repositorieslinks() }
  | {'items', list(openapi_github_repository:openapi_github_repository()) }
  | {'lastPage', integer() }
  | {'nextPage', integer() }
  | {'pageSize', integer() }
  ].


openapi_github_repositories() ->
    openapi_github_repositories([]).

openapi_github_repositories(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_github_repositorieslinks:openapi_github_repositorieslinks() }
            , {'items', list(openapi_github_repository:openapi_github_repository()) }
            , {'lastPage', integer() }
            , {'nextPage', integer() }
            , {'pageSize', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

