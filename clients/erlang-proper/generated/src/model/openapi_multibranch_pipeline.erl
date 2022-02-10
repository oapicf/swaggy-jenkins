-module(openapi_multibranch_pipeline).

-include("openapi.hrl").

-export([openapi_multibranch_pipeline/0]).

-export([openapi_multibranch_pipeline/1]).

-export_type([openapi_multibranch_pipeline/0]).

-type openapi_multibranch_pipeline() ::
  [ {'displayName', binary() }
  | {'estimatedDurationInMillis', integer() }
  | {'latestRun', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'weatherScore', integer() }
  | {'branchNames', list(binary()) }
  | {'numberOfFailingBranches', integer() }
  | {'numberOfFailingPullRequests', integer() }
  | {'numberOfSuccessfulBranches', integer() }
  | {'numberOfSuccessfulPullRequests', integer() }
  | {'totalNumberOfBranches', integer() }
  | {'totalNumberOfPullRequests', integer() }
  | {'_class', binary() }
  ].


openapi_multibranch_pipeline() ->
    openapi_multibranch_pipeline([]).

openapi_multibranch_pipeline(Fields) ->
  Default = [ {'displayName', binary() }
            , {'estimatedDurationInMillis', integer() }
            , {'latestRun', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'weatherScore', integer() }
            , {'branchNames', list(binary()) }
            , {'numberOfFailingBranches', integer() }
            , {'numberOfFailingPullRequests', integer() }
            , {'numberOfSuccessfulBranches', integer() }
            , {'numberOfSuccessfulPullRequests', integer() }
            , {'totalNumberOfBranches', integer() }
            , {'totalNumberOfPullRequests', integer() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

