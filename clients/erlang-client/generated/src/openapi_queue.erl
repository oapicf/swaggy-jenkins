-module(openapi_queue).

-export([encode/1]).

-export_type([openapi_queue/0]).

-type openapi_queue() ::
    #{ '_class' => binary(),
       'items' => list()
     }.

encode(#{ '_class' := Class,
          'items' := Items
        }) ->
    #{ '_class' => Class,
       'items' => Items
     }.
