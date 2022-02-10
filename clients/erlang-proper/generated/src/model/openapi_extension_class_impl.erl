-module(openapi_extension_class_impl).

-include("openapi.hrl").

-export([openapi_extension_class_impl/0]).

-export([openapi_extension_class_impl/1]).

-export_type([openapi_extension_class_impl/0]).

-type openapi_extension_class_impl() ::
  [ {'_class', binary() }
  | {'_links', openapi_extension_class_impllinks:openapi_extension_class_impllinks() }
  | {'classes', list(binary()) }
  ].


openapi_extension_class_impl() ->
    openapi_extension_class_impl([]).

openapi_extension_class_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_extension_class_impllinks:openapi_extension_class_impllinks() }
            , {'classes', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

