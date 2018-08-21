-module(openapi_users).

-export([encode/1]).

-export_type([openapi_users/0]).

-type openapi_users() ::
    #{ 
     }.

encode(#{ 
        }) ->
    #{ 
     }.
