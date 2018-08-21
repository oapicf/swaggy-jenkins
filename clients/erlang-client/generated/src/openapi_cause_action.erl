-module(openapi_cause_action).

-export([encode/1]).

-export_type([openapi_cause_action/0]).

-type openapi_cause_action() ::
    #{ '_class' => binary(),
       'causes' => list()
     }.

encode(#{ '_class' := Class,
          'causes' := Causes
        }) ->
    #{ '_class' => Class,
       'causes' => Causes
     }.
