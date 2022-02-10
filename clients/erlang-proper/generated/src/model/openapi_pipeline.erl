-module(openapi_pipeline).

-include("openapi.hrl").

-export([openapi_pipeline/0]).

-export([openapi_pipeline/1]).

-export_type([openapi_pipeline/0]).

-type openapi_pipeline() ::
  [ {'_class', binary() }
  | {'organization', binary() }
  | {'name', binary() }
  | {'displayName', binary() }
  | {'fullName', binary() }
  | {'weatherScore', integer() }
  | {'estimatedDurationInMillis', integer() }
  | {'latestRun', openapi_pipelinelatest_run:openapi_pipelinelatest_run() }
  ].


openapi_pipeline() ->
    openapi_pipeline([]).

openapi_pipeline(Fields) ->
  Default = [ {'_class', binary() }
            , {'organization', binary() }
            , {'name', binary() }
            , {'displayName', binary() }
            , {'fullName', binary() }
            , {'weatherScore', integer() }
            , {'estimatedDurationInMillis', integer() }
            , {'latestRun', openapi_pipelinelatest_run:openapi_pipelinelatest_run() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

