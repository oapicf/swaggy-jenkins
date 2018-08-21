-module(openapi_link).

-export([encode/1]).

-export_type([openapi_link/0]).

-type openapi_link() ::
    #{ '_class' => binary(),
       'href' => binary()
     }.

encode(#{ '_class' := Class,
          'href' := Href
        }) ->
    #{ '_class' => Class,
       'href' => Href
     }.
