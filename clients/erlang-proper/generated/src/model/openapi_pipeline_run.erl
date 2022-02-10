-module(openapi_pipeline_run).

-include("openapi.hrl").

-export([openapi_pipeline_run/0]).

-export([openapi_pipeline_run/1]).

-export_type([openapi_pipeline_run/0]).

-type openapi_pipeline_run() ::
  [ {'_class', binary() }
  | {'artifacts', list(openapi_pipeline_runartifacts:openapi_pipeline_runartifacts()) }
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


openapi_pipeline_run() ->
    openapi_pipeline_run([]).

openapi_pipeline_run(Fields) ->
  Default = [ {'_class', binary() }
            , {'artifacts', list(openapi_pipeline_runartifacts:openapi_pipeline_runartifacts()) }
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

