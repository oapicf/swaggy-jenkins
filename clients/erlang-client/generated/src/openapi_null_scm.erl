-module(openapi_null_scm).

-export([encode/1]).

-export_type([openapi_null_scm/0]).

-type openapi_null_scm() ::
    #{ '_class' => binary()
     }.

encode(#{ '_class' := Class
        }) ->
    #{ '_class' => Class
     }.
