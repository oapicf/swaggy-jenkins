-module(openapi_github_repositorieslinks).

-include("openapi.hrl").

-export([openapi_github_repositorieslinks/0]).

-export([openapi_github_repositorieslinks/1]).

-export_type([openapi_github_repositorieslinks/0]).

-type openapi_github_repositorieslinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_github_repositorieslinks() ->
    openapi_github_repositorieslinks([]).

openapi_github_repositorieslinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

