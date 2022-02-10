-module(openapi_unlabeled_load_statistics).

-include("openapi.hrl").

-export([openapi_unlabeled_load_statistics/0]).

-export([openapi_unlabeled_load_statistics/1]).

-export_type([openapi_unlabeled_load_statistics/0]).

-type openapi_unlabeled_load_statistics() ::
  [ {'_class', binary() }
  ].


openapi_unlabeled_load_statistics() ->
    openapi_unlabeled_load_statistics([]).

openapi_unlabeled_load_statistics(Fields) ->
  Default = [ {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

