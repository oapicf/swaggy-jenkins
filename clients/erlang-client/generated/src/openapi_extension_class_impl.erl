-module(openapi_extension_class_impl).

-export([encode/1]).

-export_type([openapi_extension_class_impl/0]).

-type openapi_extension_class_impl() ::
    #{ '_class' => binary(),
       '_links' => openapi_extension_class_impllinks:openapi_extension_class_impllinks(),
       'classes' => list()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'classes' := Classes
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'classes' => Classes
     }.
