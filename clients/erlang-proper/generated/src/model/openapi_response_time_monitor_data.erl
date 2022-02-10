-module(openapi_response_time_monitor_data).

-include("openapi.hrl").

-export([openapi_response_time_monitor_data/0]).

-export([openapi_response_time_monitor_data/1]).

-export_type([openapi_response_time_monitor_data/0]).

-type openapi_response_time_monitor_data() ::
  [ {'_class', binary() }
  | {'timestamp', integer() }
  | {'average', integer() }
  ].


openapi_response_time_monitor_data() ->
    openapi_response_time_monitor_data([]).

openapi_response_time_monitor_data(Fields) ->
  Default = [ {'_class', binary() }
            , {'timestamp', integer() }
            , {'average', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

