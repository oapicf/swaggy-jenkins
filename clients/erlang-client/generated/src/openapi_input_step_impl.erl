-module(openapi_input_step_impl).

-export([encode/1]).

-export_type([openapi_input_step_impl/0]).

-type openapi_input_step_impl() ::
    #{ '_class' => binary(),
       '_links' => openapi_input_step_impllinks:openapi_input_step_impllinks(),
       'id' => binary(),
       'message' => binary(),
       'ok' => binary(),
       'parameters' => list(),
       'submitter' => binary()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'id' := Id,
          'message' := Message,
          'ok' := Ok,
          'parameters' := Parameters,
          'submitter' := Submitter
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'id' => Id,
       'message' => Message,
       'ok' => Ok,
       'parameters' => Parameters,
       'submitter' => Submitter
     }.
