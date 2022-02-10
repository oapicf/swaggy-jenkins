-module(openapi_github_repositorylinks).

-include("openapi.hrl").

-export([openapi_github_repositorylinks/0]).

-export([openapi_github_repositorylinks/1]).

-export_type([openapi_github_repositorylinks/0]).

-type openapi_github_repositorylinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_github_repositorylinks() ->
    openapi_github_repositorylinks([]).

openapi_github_repositorylinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

