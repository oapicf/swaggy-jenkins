-module(openapi_extension_class_container_impl1links).

-include("openapi.hrl").

-export([openapi_extension_class_container_impl1links/0]).

-export([openapi_extension_class_container_impl1links/1]).

-export_type([openapi_extension_class_container_impl1links/0]).

-type openapi_extension_class_container_impl1links() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_extension_class_container_impl1links() ->
    openapi_extension_class_container_impl1links([]).

openapi_extension_class_container_impl1links(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

