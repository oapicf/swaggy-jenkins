-module(openapi_pipeline).

-export([encode/1]).

-export_type([openapi_pipeline/0]).

-type openapi_pipeline() ::
    #{ '_class' => binary(),
       'organization' => binary(),
       'name' => binary(),
       'displayName' => binary(),
       'fullName' => binary(),
       'weatherScore' => integer(),
       'estimatedDurationInMillis' => integer(),
       'latestRun' => openapi_pipelinelatest_run:openapi_pipelinelatest_run()
     }.

encode(#{ '_class' := Class,
          'organization' := Organization,
          'name' := Name,
          'displayName' := DisplayName,
          'fullName' := FullName,
          'weatherScore' := WeatherScore,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'latestRun' := LatestRun
        }) ->
    #{ '_class' => Class,
       'organization' => Organization,
       'name' => Name,
       'displayName' => DisplayName,
       'fullName' => FullName,
       'weatherScore' => WeatherScore,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'latestRun' => LatestRun
     }.
