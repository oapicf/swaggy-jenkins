-module(openapi_free_style_build).

-include("openapi.hrl").

-export([openapi_free_style_build/0]).

-export([openapi_free_style_build/1]).

-export_type([openapi_free_style_build/0]).

-type openapi_free_style_build() ::
  [ {'_class', binary() }
  | {'number', integer() }
  | {'url', binary() }
  | {'actions', list(openapi_cause_action:openapi_cause_action()) }
  | {'building', boolean() }
  | {'description', binary() }
  | {'displayName', binary() }
  | {'duration', integer() }
  | {'estimatedDuration', integer() }
  | {'executor', binary() }
  | {'fullDisplayName', binary() }
  | {'id', binary() }
  | {'keepLog', boolean() }
  | {'queueId', integer() }
  | {'result', binary() }
  | {'timestamp', integer() }
  | {'builtOn', binary() }
  | {'changeSet', openapi_empty_change_log_set:openapi_empty_change_log_set() }
  ].


openapi_free_style_build() ->
    openapi_free_style_build([]).

openapi_free_style_build(Fields) ->
  Default = [ {'_class', binary() }
            , {'number', integer() }
            , {'url', binary() }
            , {'actions', list(openapi_cause_action:openapi_cause_action()) }
            , {'building', boolean() }
            , {'description', binary() }
            , {'displayName', binary() }
            , {'duration', integer() }
            , {'estimatedDuration', integer() }
            , {'executor', binary() }
            , {'fullDisplayName', binary() }
            , {'id', binary() }
            , {'keepLog', boolean() }
            , {'queueId', integer() }
            , {'result', binary() }
            , {'timestamp', integer() }
            , {'builtOn', binary() }
            , {'changeSet', openapi_empty_change_log_set:openapi_empty_change_log_set() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

