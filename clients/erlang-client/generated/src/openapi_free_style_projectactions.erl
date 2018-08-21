-module(openapi_free_style_projectactions).

-export([encode/1]).

-export_type([openapi_free_style_projectactions/0]).

-type openapi_free_style_projectactions() ::
    #{ '_class' => binary()
     }.

encode(#{ '_class' := Class
        }) ->
    #{ '_class' => Class
     }.
