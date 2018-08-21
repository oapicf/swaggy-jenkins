-module(openapi_pipeline_run_node).

-export([encode/1]).

-export_type([openapi_pipeline_run_node/0]).

-type openapi_pipeline_run_node() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'durationInMillis' => integer(),
       'edges' => list(),
       'id' => binary(),
       'result' => binary(),
       'startTime' => binary(),
       'state' => binary()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'durationInMillis' := DurationInMillis,
          'edges' := Edges,
          'id' := Id,
          'result' := Result,
          'startTime' := StartTime,
          'state' := State
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'durationInMillis' => DurationInMillis,
       'edges' => Edges,
       'id' => Id,
       'result' => Result,
       'startTime' => StartTime,
       'state' => State
     }.
