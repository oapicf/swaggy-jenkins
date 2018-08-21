-module(openapi_favorite_impl).

-export([encode/1]).

-export_type([openapi_favorite_impl/0]).

-type openapi_favorite_impl() ::
    #{ '_class' => binary(),
       '_links' => openapi_favorite_impllinks:openapi_favorite_impllinks(),
       'item' => openapi_pipeline_impl:openapi_pipeline_impl()
     }.

encode(#{ '_class' := Class,
          '_links' := Links,
          'item' := Item
        }) ->
    #{ '_class' => Class,
       '_links' => Links,
       'item' => Item
     }.
