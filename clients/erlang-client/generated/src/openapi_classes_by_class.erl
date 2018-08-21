-module(openapi_classes_by_class).

-export([encode/1]).

-export_type([openapi_classes_by_class/0]).

-type openapi_classes_by_class() ::
    #{ 'classes' => list(),
       '_class' => binary()
     }.

encode(#{ 'classes' := Classes,
          '_class' := Class
        }) ->
    #{ 'classes' => Classes,
       '_class' => Class
     }.
