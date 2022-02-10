-module(openapi_pipeline_branchesitemlatest_run).

-include("openapi.hrl").

-export([openapi_pipeline_branchesitemlatest_run/0]).

-export([openapi_pipeline_branchesitemlatest_run/1]).

-export_type([openapi_pipeline_branchesitemlatest_run/0]).

-type openapi_pipeline_branchesitemlatest_run() ::
  [ {'durationInMillis', integer() }
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


openapi_pipeline_branchesitemlatest_run() ->
    openapi_pipeline_branchesitemlatest_run([]).

openapi_pipeline_branchesitemlatest_run(Fields) ->
  Default = [ {'durationInMillis', integer() }
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

