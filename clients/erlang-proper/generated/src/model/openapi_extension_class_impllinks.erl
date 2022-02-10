-module(openapi_extension_class_impllinks).

-include("openapi.hrl").

-export([openapi_extension_class_impllinks/0]).

-export([openapi_extension_class_impllinks/1]).

-export_type([openapi_extension_class_impllinks/0]).

-type openapi_extension_class_impllinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_extension_class_impllinks() ->
    openapi_extension_class_impllinks([]).

openapi_extension_class_impllinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

