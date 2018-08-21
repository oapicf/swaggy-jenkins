-module(openapi_empty_change_log_set).

-export([encode/1]).

-export_type([openapi_empty_change_log_set/0]).

-type openapi_empty_change_log_set() ::
    #{ '_class' => binary(),
       'kind' => binary()
     }.

encode(#{ '_class' := Class,
          'kind' := Kind
        }) ->
    #{ '_class' => Class,
       'kind' => Kind
     }.
