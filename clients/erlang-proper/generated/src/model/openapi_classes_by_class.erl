-module(openapi_classes_by_class).

-include("openapi.hrl").

-export([openapi_classes_by_class/0]).

-export([openapi_classes_by_class/1]).

-export_type([openapi_classes_by_class/0]).

-type openapi_classes_by_class() ::
  [ {'classes', list(binary()) }
  | {'_class', binary() }
  ].


openapi_classes_by_class() ->
    openapi_classes_by_class([]).

openapi_classes_by_class(Fields) ->
  Default = [ {'classes', list(binary()) }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

