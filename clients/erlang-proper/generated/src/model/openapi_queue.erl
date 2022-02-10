-module(openapi_queue).

-include("openapi.hrl").

-export([openapi_queue/0]).

-export([openapi_queue/1]).

-export_type([openapi_queue/0]).

-type openapi_queue() ::
  [ {'_class', binary() }
  | {'items', list(openapi_queue_blocked_item:openapi_queue_blocked_item()) }
  ].


openapi_queue() ->
    openapi_queue([]).

openapi_queue(Fields) ->
  Default = [ {'_class', binary() }
            , {'items', list(openapi_queue_blocked_item:openapi_queue_blocked_item()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

