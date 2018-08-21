-module(openapi_label1).

-export([encode/1]).

-export_type([openapi_label1/0]).

-type openapi_label1() ::
    #{ '_class' => binary()
     }.

encode(#{ '_class' := Class
        }) ->
    #{ '_class' => Class
     }.
