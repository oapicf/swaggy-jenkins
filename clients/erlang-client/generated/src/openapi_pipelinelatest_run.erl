-module(openapi_pipelinelatest_run).

-export([encode/1]).

-export_type([openapi_pipelinelatest_run/0]).

-type openapi_pipelinelatest_run() ::
    #{ 'artifacts' => list(),
       'durationInMillis' => integer(),
       'estimatedDurationInMillis' => integer(),
       'enQueueTime' => binary(),
       'endTime' => binary(),
       'id' => binary(),
       'organization' => binary(),
       'pipeline' => binary(),
       'result' => binary(),
       'runSummary' => binary(),
       'startTime' => binary(),
       'state' => binary(),
       'type' => binary(),
       'commitId' => binary(),
       '_class' => binary()
     }.

encode(#{ 'artifacts' := Artifacts,
          'durationInMillis' := DurationInMillis,
          'estimatedDurationInMillis' := EstimatedDurationInMillis,
          'enQueueTime' := EnQueueTime,
          'endTime' := EndTime,
          'id' := Id,
          'organization' := Organization,
          'pipeline' := Pipeline,
          'result' := Result,
          'runSummary' := RunSummary,
          'startTime' := StartTime,
          'state' := State,
          'type' := Type,
          'commitId' := CommitId,
          '_class' := Class
        }) ->
    #{ 'artifacts' => Artifacts,
       'durationInMillis' => DurationInMillis,
       'estimatedDurationInMillis' => EstimatedDurationInMillis,
       'enQueueTime' => EnQueueTime,
       'endTime' => EndTime,
       'id' => Id,
       'organization' => Organization,
       'pipeline' => Pipeline,
       'result' => Result,
       'runSummary' => RunSummary,
       'startTime' => StartTime,
       'state' => State,
       'type' => Type,
       'commitId' => CommitId,
       '_class' => Class
     }.
