-module(openapi_extension_class_container_impl1links).

-export([encode/1]).

-export_type([openapi_extension_class_container_impl1links/0]).

-type openapi_extension_class_container_impl1links() ::
    #{ 'self' => openapi_link:openapi_link(),
       '_class' => binary()
     }.

encode(#{ 'self' := Self,
          '_class' := Class
        }) ->
    #{ 'self' => Self,
       '_class' => Class
     }.
