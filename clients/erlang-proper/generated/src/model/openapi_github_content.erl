-module(openapi_github_content).

-include("openapi.hrl").

-export([openapi_github_content/0]).

-export([openapi_github_content/1]).

-export_type([openapi_github_content/0]).

-type openapi_github_content() ::
  [ {'name', binary() }
  | {'sha', binary() }
  | {'_class', binary() }
  | {'repo', binary() }
  | {'size', integer() }
  | {'owner', binary() }
  | {'path', binary() }
  | {'base64Data', binary() }
  ].


openapi_github_content() ->
    openapi_github_content([]).

openapi_github_content(Fields) ->
  Default = [ {'name', binary() }
            , {'sha', binary() }
            , {'_class', binary() }
            , {'repo', binary() }
            , {'size', integer() }
            , {'owner', binary() }
            , {'path', binary() }
            , {'base64Data', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

