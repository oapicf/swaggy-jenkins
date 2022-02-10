-module(openapi_swap_space_monitor_memory_usage2).

-include("openapi.hrl").

-export([openapi_swap_space_monitor_memory_usage2/0]).

-export([openapi_swap_space_monitor_memory_usage2/1]).

-export_type([openapi_swap_space_monitor_memory_usage2/0]).

-type openapi_swap_space_monitor_memory_usage2() ::
  [ {'_class', binary() }
  | {'availablePhysicalMemory', integer() }
  | {'availableSwapSpace', integer() }
  | {'totalPhysicalMemory', integer() }
  | {'totalSwapSpace', integer() }
  ].


openapi_swap_space_monitor_memory_usage2() ->
    openapi_swap_space_monitor_memory_usage2([]).

openapi_swap_space_monitor_memory_usage2(Fields) ->
  Default = [ {'_class', binary() }
            , {'availablePhysicalMemory', integer() }
            , {'availableSwapSpace', integer() }
            , {'totalPhysicalMemory', integer() }
            , {'totalSwapSpace', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

