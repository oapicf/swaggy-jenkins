-module(openapi_github_respository_containerlinks).

-include("openapi.hrl").

-export([openapi_github_respository_containerlinks/0]).

-export([openapi_github_respository_containerlinks/1]).

-export_type([openapi_github_respository_containerlinks/0]).

-type openapi_github_respository_containerlinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_github_respository_containerlinks() ->
    openapi_github_respository_containerlinks([]).

openapi_github_respository_containerlinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

