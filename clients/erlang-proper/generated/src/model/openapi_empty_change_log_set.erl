-module(openapi_empty_change_log_set).

-include("openapi.hrl").

-export([openapi_empty_change_log_set/0]).

-export([openapi_empty_change_log_set/1]).

-export_type([openapi_empty_change_log_set/0]).

-type openapi_empty_change_log_set() ::
  [ {'_class', binary() }
  | {'kind', binary() }
  ].


openapi_empty_change_log_set() ->
    openapi_empty_change_log_set([]).

openapi_empty_change_log_set(Fields) ->
  Default = [ {'_class', binary() }
            , {'kind', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

