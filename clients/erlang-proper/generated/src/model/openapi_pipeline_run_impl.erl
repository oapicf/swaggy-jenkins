-module(openapi_pipeline_run_impl).

-include("openapi.hrl").

-export([openapi_pipeline_run_impl/0]).

-export([openapi_pipeline_run_impl/1]).

-export_type([openapi_pipeline_run_impl/0]).

-type openapi_pipeline_run_impl() ::
  [ {'_class', binary() }
  | {'_links', openapi_pipeline_run_impllinks:openapi_pipeline_run_impllinks() }
  | {'durationInMillis', integer() }
  | {'enQueueTime', binary() }
  | {'endTime', binary() }
  | {'estimatedDurationInMillis', integer() }
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


openapi_pipeline_run_impl() ->
    openapi_pipeline_run_impl([]).

openapi_pipeline_run_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_pipeline_run_impllinks:openapi_pipeline_run_impllinks() }
            , {'durationInMillis', integer() }
            , {'enQueueTime', binary() }
            , {'endTime', binary() }
            , {'estimatedDurationInMillis', integer() }
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

