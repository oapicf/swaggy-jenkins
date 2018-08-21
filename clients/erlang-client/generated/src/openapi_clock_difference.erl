-module(openapi_clock_difference).

-export([encode/1]).

-export_type([openapi_clock_difference/0]).

-type openapi_clock_difference() ::
    #{ '_class' => binary(),
       'diff' => integer()
     }.

encode(#{ '_class' := Class,
          'diff' := Diff
        }) ->
    #{ '_class' => Class,
       'diff' => Diff
     }.
