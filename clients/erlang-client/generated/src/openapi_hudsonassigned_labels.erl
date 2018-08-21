-module(openapi_hudsonassigned_labels).

-export([encode/1]).

-export_type([openapi_hudsonassigned_labels/0]).

-type openapi_hudsonassigned_labels() ::
    #{ '_class' => binary()
     }.

encode(#{ '_class' := Class
        }) ->
    #{ '_class' => Class
     }.
