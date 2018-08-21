-module(openapi_pipeline_impl).

-export([encode/1]).

-export_type([openapi_pipeline_impl/0]).

-type openapi_pipeline_impl() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'estimatedDurationInMillis' => integer(),
       'fullName' => binary(),
       'latestRun' => binary(),
       'name' => binary(),
       'organization' => binary(),
       'weatherScore' => integer(),
       '_links' => openapi_pipeline_impllinks:openapi_pipeline_impllinks()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'fullName' := FullName,
          'latestRun' := LatestRun,
          'name' := Name,
          'organization' := Organization,
          'weatherScore' := WeatherScore,
          '_links' := Links
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'fullName' => FullName,
       'latestRun' => LatestRun,
       'name' => Name,
       'organization' => Organization,
       'weatherScore' => WeatherScore,
       '_links' => Links
     }.
