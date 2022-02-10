-module(openapi_string_parameter_definition).

-include("openapi.hrl").

-export([openapi_string_parameter_definition/0]).

-export([openapi_string_parameter_definition/1]).

-export_type([openapi_string_parameter_definition/0]).

-type openapi_string_parameter_definition() ::
  [ {'_class', binary() }
  | {'defaultParameterValue', openapi_string_parameter_value:openapi_string_parameter_value() }
  | {'description', binary() }
  | {'name', binary() }
  | {'type', binary() }
  ].


openapi_string_parameter_definition() ->
    openapi_string_parameter_definition([]).

openapi_string_parameter_definition(Fields) ->
  Default = [ {'_class', binary() }
            , {'defaultParameterValue', openapi_string_parameter_value:openapi_string_parameter_value() }
            , {'description', binary() }
            , {'name', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

