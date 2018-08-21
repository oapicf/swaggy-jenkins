-module(openapi_pipeline_branchesitem).

-export([encode/1]).

-export_type([openapi_pipeline_branchesitem/0]).

-type openapi_pipeline_branchesitem() ::
    #{ 'displayName' => binary(),
       'estimatedDurationInMillis' => integer(),
       'name' => binary(),
       'weatherScore' => integer(),
       'latestRun' => openapi_pipeline_branchesitemlatest_run:openapi_pipeline_branchesitemlatest_run(),
       'organization' => binary(),
       'pullRequest' => openapi_pipeline_branchesitempull_request:openapi_pipeline_branchesitempull_request(),
       'totalNumberOfPullRequests' => integer(),
       '_class' => binary()
     }.

encode(#{ 'displayName' := DisplayName,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'name' := Name,
          'weatherScore' := WeatherScore,
          'latestRun' := LatestRun,
          'organization' := Organization,
          'pullRequest' := PullRequest,
          'totalNumberOfPullRequests' := TotalNumberOfPullRequests,
          '_class' := Class
        }) ->
    #{ 'displayName' => DisplayName,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'name' => Name,
       'weatherScore' => WeatherScore,
       'latestRun' => LatestRun,
       'organization' => Organization,
       'pullRequest' => PullRequest,
       'totalNumberOfPullRequests' => TotalNumberOfPullRequests,
       '_class' => Class
     }.
