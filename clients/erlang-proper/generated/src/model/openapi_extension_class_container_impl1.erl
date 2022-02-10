-module(openapi_extension_class_container_impl1).

-include("openapi.hrl").

-export([openapi_extension_class_container_impl1/0]).

-export([openapi_extension_class_container_impl1/1]).

-export_type([openapi_extension_class_container_impl1/0]).

-type openapi_extension_class_container_impl1() ::
  [ {'_class', binary() }
  | {'_links', openapi_extension_class_container_impl1links:openapi_extension_class_container_impl1links() }
  | {'map', openapi_extension_class_container_impl1map:openapi_extension_class_container_impl1map() }
  ].


openapi_extension_class_container_impl1() ->
    openapi_extension_class_container_impl1([]).

openapi_extension_class_container_impl1(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_extension_class_container_impl1links:openapi_extension_class_container_impl1links() }
            , {'map', openapi_extension_class_container_impl1map:openapi_extension_class_container_impl1map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

