-module(openapi_pipelinelatest_run).

-include("openapi.hrl").

-export([openapi_pipelinelatest_run/0]).

-export([openapi_pipelinelatest_run/1]).

-export_type([openapi_pipelinelatest_run/0]).

-type openapi_pipelinelatest_run() ::
  [ {'artifacts', list(openapi_pipelinelatest_runartifacts:openapi_pipelinelatest_runartifacts()) }
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
  | {'_class', binary() }
  ].


openapi_pipelinelatest_run() ->
    openapi_pipelinelatest_run([]).

openapi_pipelinelatest_run(Fields) ->
  Default = [ {'artifacts', list(openapi_pipelinelatest_runartifacts:openapi_pipelinelatest_runartifacts()) }
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
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

