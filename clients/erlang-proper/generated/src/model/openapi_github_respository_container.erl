-module(openapi_github_respository_container).

-include("openapi.hrl").

-export([openapi_github_respository_container/0]).

-export([openapi_github_respository_container/1]).

-export_type([openapi_github_respository_container/0]).

-type openapi_github_respository_container() ::
  [ {'_class', binary() }
  | {'_links', openapi_github_respository_containerlinks:openapi_github_respository_containerlinks() }
  | {'repositories', openapi_github_repositories:openapi_github_repositories() }
  ].


openapi_github_respository_container() ->
    openapi_github_respository_container([]).

openapi_github_respository_container(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_github_respository_containerlinks:openapi_github_respository_containerlinks() }
            , {'repositories', openapi_github_repositories:openapi_github_repositories() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

