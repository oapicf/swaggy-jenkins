-module(openapi_pipeline_run_impl).

-export([encode/1]).

-export_type([openapi_pipeline_run_impl/0]).

-type openapi_pipeline_run_impl() ::
    #{ '_class' => binary(),
       '_links' => openapi_pipeline_run_impllinks:openapi_pipeline_run_impllinks(),
       'durationInMillis' => integer(),
       'enQueueTime' => binary(),
       'endTime' => binary(),
       'estimatedDurationInMillis' => integer(),
       'id' => binary(),
       'organization' => binary(),
       'pipeline' => binary(),
       'result' => binary(),
       'runSummary' => binary(),
       'startTime' => binary(),
       'state' => binary(),
       'type' => binary(),
       'commitId' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'durationInMillis' := DurationInMillis,
          'enQueueTime' := EnQueueTime,
          'endTime' := EndTime,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'id' := Id,
          'organization' := Organization,
          'pipeline' := Pipeline,
          'result' := Result,
          'runSummary' := RunSummary,
          'startTime' := StartTime,
          'state' := State,
          'type' := Type,
          'commitId' := CommitId
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'durationInMillis' => DurationInMillis,
       'enQueueTime' => EnQueueTime,
       'endTime' => EndTime,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'id' => Id,
       'organization' => Organization,
       'pipeline' => Pipeline,
       'result' => Result,
       'runSummary' => RunSummary,
       'startTime' => StartTime,
       'state' => State,
       'type' => Type,
       'commitId' => CommitId
     }.
