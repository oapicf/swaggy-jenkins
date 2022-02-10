-module(openapi_link).

-include("openapi.hrl").

-export([openapi_link/0]).

-export([openapi_link/1]).

-export_type([openapi_link/0]).

-type openapi_link() ::
  [ {'_class', binary() }
  | {'href', binary() }
  ].


openapi_link() ->
    openapi_link([]).

openapi_link(Fields) ->
  Default = [ {'_class', binary() }
            , {'href', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

