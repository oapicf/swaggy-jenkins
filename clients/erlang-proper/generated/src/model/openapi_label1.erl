-module(openapi_label1).

-include("openapi.hrl").

-export([openapi_label1/0]).

-export([openapi_label1/1]).

-export_type([openapi_label1/0]).

-type openapi_label1() ::
  [ {'_class', binary() }
  ].


openapi_label1() ->
    openapi_label1([]).

openapi_label1(Fields) ->
  Default = [ {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

