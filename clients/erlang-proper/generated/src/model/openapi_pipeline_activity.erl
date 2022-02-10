-module(openapi_pipeline_activity).

-include("openapi.hrl").

-export([openapi_pipeline_activity/0]).

-export([openapi_pipeline_activity/1]).

-export_type([openapi_pipeline_activity/0]).

-type openapi_pipeline_activity() ::
  [ {'_class', binary() }
  | {'artifacts', list(openapi_pipeline_activityartifacts:openapi_pipeline_activityartifacts()) }
  | {'durationInMillis', integer() }
  | {'estimatedDurationInMillis', integer() }
  | {'enQueueTime', binary() }
  | {'endTime', binary() }
  | {'id', binary() }
  | {'organization', binary() }
  | {'pipeline', binary() }
  | {'result', binary() }
  | {'runSummary', binary() }
  | {'startTime', binary() }
  | {'state', binary() }
  | {'type', binary() }
  | {'commitId', binary() }
  ].


openapi_pipeline_activity() ->
    openapi_pipeline_activity([]).

openapi_pipeline_activity(Fields) ->
  Default = [ {'_class', binary() }
            , {'artifacts', list(openapi_pipeline_activityartifacts:openapi_pipeline_activityartifacts()) }
            , {'durationInMillis', integer() }
            , {'estimatedDurationInMillis', integer() }
            , {'enQueueTime', binary() }
            , {'endTime', binary() }
            , {'id', binary() }
            , {'organization', binary() }
            , {'pipeline', binary() }
            , {'result', binary() }
            , {'runSummary', binary() }
            , {'startTime', binary() }
            , {'state', binary() }
            , {'type', binary() }
            , {'commitId', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

