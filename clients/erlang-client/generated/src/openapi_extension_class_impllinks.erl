-module(openapi_extension_class_impllinks).

-export([encode/1]).

-export_type([openapi_extension_class_impllinks/0]).

-type openapi_extension_class_impllinks() ::
    #{ 'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
