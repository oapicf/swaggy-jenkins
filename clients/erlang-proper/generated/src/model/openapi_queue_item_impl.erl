-module(openapi_queue_item_impl).

-include("openapi.hrl").

-export([openapi_queue_item_impl/0]).

-export([openapi_queue_item_impl/1]).

-export_type([openapi_queue_item_impl/0]).

-type openapi_queue_item_impl() ::
  [ {'_class', binary() }
  | {'expectedBuildNumber', integer() }
  | {'id', binary() }
  | {'pipeline', binary() }
  | {'queuedTime', integer() }
  ].


openapi_queue_item_impl() ->
    openapi_queue_item_impl([]).

openapi_queue_item_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'expectedBuildNumber', integer() }
            , {'id', binary() }
            , {'pipeline', binary() }
            , {'queuedTime', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

