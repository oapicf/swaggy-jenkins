-module(openapi_generic_resource).

-export([encode/1]).

-export_type([openapi_generic_resource/0]).

-type openapi_generic_resource() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'durationInMillis' => integer(),
       'id' => binary(),
       'result' => binary(),
       'startTime' => binary()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'durationInMillis' := DurationInMillis,
          'id' := Id,
          'result' := Result,
          'startTime' := StartTime
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'durationInMillis' => DurationInMillis,
       'id' => Id,
       'result' => Result,
       'startTime' => StartTime
     }.
