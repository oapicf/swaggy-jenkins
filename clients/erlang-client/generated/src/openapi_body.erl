-module(openapi_body).

-export([encode/1]).

-export_type([openapi_body/0]).

-type openapi_body() ::
    #{ 'favorite' := boolean()
     }.

encode(#{ 'favorite' := Favorite
        }) ->
    #{ 'favorite' => Favorite
     }.
