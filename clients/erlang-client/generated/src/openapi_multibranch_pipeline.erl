-module(openapi_multibranch_pipeline).

-export([encode/1]).

-export_type([openapi_multibranch_pipeline/0]).

-type openapi_multibranch_pipeline() ::
    #{ 'displayName' => binary(),
       'estimatedDurationInMillis' => integer(),
       'latestRun' => binary(),
       'name' => binary(),
       'organization' => binary(),
       'weatherScore' => integer(),
       'branchNames' => list(),
       'numberOfFailingBranches' => integer(),
       'numberOfFailingPullRequests' => integer(),
       'numberOfSuccessfulBranches' => integer(),
       'numberOfSuccessfulPullRequests' => integer(),
       'totalNumberOfBranches' => integer(),
       'totalNumberOfPullRequests' => integer(),
       '_class' => binary()
     }.

encode(#{ 'displayName' := DisplayName,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'latestRun' := LatestRun,
          'name' := Name,
          'organization' := Organization,
          'weatherScore' := WeatherScore,
          'branchNames' := BranchNames,
          'numberOfFailingBranches' := NumberOfFailingBranches,
          'numberOfFailingPullRequests' := NumberOfFailingPullRequests,
          'numberOfSuccessfulBranches' := NumberOfSuccessfulBranches,
          'numberOfSuccessfulPullRequests' := NumberOfSuccessfulPullRequests,
          'totalNumberOfBranches' := TotalNumberOfBranches,
          'totalNumberOfPullRequests' := TotalNumberOfPullRequests,
          '_class' := Class
        }) ->
    #{ 'displayName' => DisplayName,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'latestRun' => LatestRun,
       'name' => Name,
       'organization' => Organization,
       'weatherScore' => WeatherScore,
       'branchNames' => BranchNames,
       'numberOfFailingBranches' => NumberOfFailingBranches,
       'numberOfFailingPullRequests' => NumberOfFailingPullRequests,
       'numberOfSuccessfulBranches' => NumberOfSuccessfulBranches,
       'numberOfSuccessfulPullRequests' => NumberOfSuccessfulPullRequests,
       'totalNumberOfBranches' => TotalNumberOfBranches,
       'totalNumberOfPullRequests' => TotalNumberOfPullRequests,
       '_class' => Class
     }.
