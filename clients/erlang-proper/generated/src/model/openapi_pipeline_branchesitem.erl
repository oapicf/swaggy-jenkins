-module(openapi_pipeline_branchesitem).

-include("openapi.hrl").

-export([openapi_pipeline_branchesitem/0]).

-export([openapi_pipeline_branchesitem/1]).

-export_type([openapi_pipeline_branchesitem/0]).

-type openapi_pipeline_branchesitem() ::
  [ {'displayName', binary() }
  | {'estimatedDurationInMillis', integer() }
  | {'name', binary() }
  | {'weatherScore', integer() }
  | {'latestRun', openapi_pipeline_branchesitemlatest_run:openapi_pipeline_branchesitemlatest_run() }
  | {'organization', binary() }
  | {'pullRequest', openapi_pipeline_branchesitempull_request:openapi_pipeline_branchesitempull_request() }
  | {'totalNumberOfPullRequests', integer() }
  | {'_class', binary() }
  ].


openapi_pipeline_branchesitem() ->
    openapi_pipeline_branchesitem([]).

openapi_pipeline_branchesitem(Fields) ->
  Default = [ {'displayName', binary() }
            , {'estimatedDurationInMillis', integer() }
            , {'name', binary() }
            , {'weatherScore', integer() }
            , {'latestRun', openapi_pipeline_branchesitemlatest_run:openapi_pipeline_branchesitemlatest_run() }
            , {'organization', binary() }
            , {'pullRequest', openapi_pipeline_branchesitempull_request:openapi_pipeline_branchesitempull_request() }
            , {'totalNumberOfPullRequests', integer() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

