-module(openapi_queue_left_item).

-include("openapi.hrl").

-export([openapi_queue_left_item/0]).

-export([openapi_queue_left_item/1]).

-export_type([openapi_queue_left_item/0]).

-type openapi_queue_left_item() ::
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
  | {'cancelled', boolean() }
  | {'executable', openapi_free_style_build:openapi_free_style_build() }
  ].


openapi_queue_left_item() ->
    openapi_queue_left_item([]).

openapi_queue_left_item(Fields) ->
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
            , {'cancelled', boolean() }
            , {'executable', openapi_free_style_build:openapi_free_style_build() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

