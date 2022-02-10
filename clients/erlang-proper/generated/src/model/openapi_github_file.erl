-module(openapi_github_file).

-include("openapi.hrl").

-export([openapi_github_file/0]).

-export([openapi_github_file/1]).

-export_type([openapi_github_file/0]).

-type openapi_github_file() ::
  [ {'content', openapi_github_content:openapi_github_content() }
  | {'_class', binary() }
  ].


openapi_github_file() ->
    openapi_github_file([]).

openapi_github_file(Fields) ->
  Default = [ {'content', openapi_github_content:openapi_github_content() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

