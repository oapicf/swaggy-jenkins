-module(openapi_github_scmlinks).

-include("openapi.hrl").

-export([openapi_github_scmlinks/0]).

-export([openapi_github_scmlinks/1]).

-export_type([openapi_github_scmlinks/0]).

-type openapi_github_scmlinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_github_scmlinks() ->
    openapi_github_scmlinks([]).

openapi_github_scmlinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

