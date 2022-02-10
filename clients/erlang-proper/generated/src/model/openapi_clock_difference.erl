-module(openapi_clock_difference).

-include("openapi.hrl").

-export([openapi_clock_difference/0]).

-export([openapi_clock_difference/1]).

-export_type([openapi_clock_difference/0]).

-type openapi_clock_difference() ::
  [ {'_class', binary() }
  | {'diff', integer() }
  ].


openapi_clock_difference() ->
    openapi_clock_difference([]).

openapi_clock_difference(Fields) ->
  Default = [ {'_class', binary() }
            , {'diff', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

