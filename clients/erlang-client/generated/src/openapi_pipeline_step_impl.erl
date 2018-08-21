-module(openapi_pipeline_step_impl).

-export([encode/1]).

-export_type([openapi_pipeline_step_impl/0]).

-type openapi_pipeline_step_impl() ::
    #{ '_class' => binary(),
       '_links' => openapi_pipeline_step_impllinks:openapi_pipeline_step_impllinks(),
       'displayName' => binary(),
       'durationInMillis' => integer(),
       'id' => binary(),
       'input' => openapi_input_step_impl:openapi_input_step_impl(),
       'result' => binary(),
       'startTime' => binary(),
       'state' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'displayName' := DisplayName,
          'durationInMillis' := DurationInMillis,
          'id' := Id,
          'input' := Input,
          'result' := Result,
          'startTime' := StartTime,
          'state' := State
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'displayName' => DisplayName,
       'durationInMillis' => DurationInMillis,
       'id' => Id,
       'input' => Input,
       'result' => Result,
       'startTime' => StartTime,
       'state' => State
     }.
