-module(openapi_string_parameter_value).

-include("openapi.hrl").

-export([openapi_string_parameter_value/0]).

-export([openapi_string_parameter_value/1]).

-export_type([openapi_string_parameter_value/0]).

-type openapi_string_parameter_value() ::
  [ {'_class', binary() }
  | {'name', binary() }
  | {'value', binary() }
  ].


openapi_string_parameter_value() ->
    openapi_string_parameter_value([]).

openapi_string_parameter_value(Fields) ->
  Default = [ {'_class', binary() }
            , {'name', binary() }
            , {'value', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

