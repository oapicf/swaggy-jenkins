-module(openapi_hudsonassigned_labels).

-include("openapi.hrl").

-export([openapi_hudsonassigned_labels/0]).

-export([openapi_hudsonassigned_labels/1]).

-export_type([openapi_hudsonassigned_labels/0]).

-type openapi_hudsonassigned_labels() ::
  [ {'_class', binary() }
  ].


openapi_hudsonassigned_labels() ->
    openapi_hudsonassigned_labels([]).

openapi_hudsonassigned_labels(Fields) ->
  Default = [ {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

