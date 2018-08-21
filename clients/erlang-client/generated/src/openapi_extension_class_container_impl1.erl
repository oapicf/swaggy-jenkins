-module(openapi_extension_class_container_impl1).

-export([encode/1]).

-export_type([openapi_extension_class_container_impl1/0]).

-type openapi_extension_class_container_impl1() ::
    #{ '_class' => binary(),
       '_links' => openapi_extension_class_container_impl1links:openapi_extension_class_container_impl1links(),
       'map' => openapi_extension_class_container_impl1map:openapi_extension_class_container_impl1map()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'map' := Map
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'map' => Map
     }.
