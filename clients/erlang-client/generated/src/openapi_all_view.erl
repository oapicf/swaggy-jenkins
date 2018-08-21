-module(openapi_all_view).

-export([encode/1]).

-export_type([openapi_all_view/0]).

-type openapi_all_view() ::
    #{ '_class' => binary(),
       'name' => binary(),
       'url' => binary()
     }.

encode(#{ '_class' := Class,
          'name' := Name,
          'url' := Url
        }) ->
    #{ '_class' => Class,
       'name' => Name,
       'url' => Url
     }.
