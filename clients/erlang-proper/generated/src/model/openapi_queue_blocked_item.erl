-module(openapi_queue_blocked_item).

-include("openapi.hrl").

-export([openapi_queue_blocked_item/0]).

-export([openapi_queue_blocked_item/1]).

-export_type([openapi_queue_blocked_item/0]).

-type openapi_queue_blocked_item() ::
  [ {'_class', binary() }
  | {'actions', list(openapi_cause_action:openapi_cause_action()) }
  | {'blocked', boolean() }
  | {'buildable', boolean() }
  | {'id', integer() }
  | {'inQueueSince', integer() }
  | {'params', binary() }
  | {'stuck', boolean() }
  | {'task', openapi_free_style_project:openapi_free_style_project() }
  | {'url', binary() }
  | {'why', binary() }
  | {'buildableStartMilliseconds', integer() }
  ].


openapi_queue_blocked_item() ->
    openapi_queue_blocked_item([]).

openapi_queue_blocked_item(Fields) ->
  Default = [ {'_class', binary() }
            , {'actions', list(openapi_cause_action:openapi_cause_action()) }
            , {'blocked', boolean() }
            , {'buildable', boolean() }
            , {'id', integer() }
            , {'inQueueSince', integer() }
            , {'params', binary() }
            , {'stuck', boolean() }
            , {'task', openapi_free_style_project:openapi_free_style_project() }
            , {'url', binary() }
            , {'why', binary() }
            , {'buildableStartMilliseconds', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

