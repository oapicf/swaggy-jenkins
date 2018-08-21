-module(openapi_unlabeled_load_statistics).

-export([encode/1]).

-export_type([openapi_unlabeled_load_statistics/0]).

-type openapi_unlabeled_load_statistics() ::
    #{ '_class' => binary()
     }.

encode(#{ '_class' := Class
        }) ->
    #{ '_class' => Class
     }.
