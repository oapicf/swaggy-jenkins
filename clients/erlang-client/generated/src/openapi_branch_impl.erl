-module(openapi_branch_impl).

-export([encode/1]).

-export_type([openapi_branch_impl/0]).

-type openapi_branch_impl() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'estimatedDurationInMillis' => integer(),
       'fullDisplayName' => binary(),
       'fullName' => binary(),
       'name' => binary(),
       'organization' => binary(),
       'parameters' => list(),
       'permissions' => openapi_branch_implpermissions:openapi_branch_implpermissions(),
       'weatherScore' => integer(),
       'pullRequest' => binary(),
       '_links' => openapi_branch_impllinks:openapi_branch_impllinks(),
       'latestRun' => openapi_pipeline_run_impl:openapi_pipeline_run_impl()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'fullDisplayName' := FullDisplayName,
          'fullName' := FullName,
          'name' := Name,
          'organization' := Organization,
          'parameters' := Parameters,
          'permissions' := Permissions,
          'weatherScore' := WeatherScore,
          'pullRequest' := PullRequest,
          '_links' := Links,
          'latestRun' := LatestRun
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'fullDisplayName' => FullDisplayName,
       'fullName' => FullName,
       'name' => Name,
       'organization' => Organization,
       'parameters' => Parameters,
       'permissions' => Permissions,
       'weatherScore' => WeatherScore,
       'pullRequest' => PullRequest,
       '_links' => Links,
       'latestRun' => LatestRun
     }.
