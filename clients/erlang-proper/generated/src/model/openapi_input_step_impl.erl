-module(openapi_input_step_impl).

-include("openapi.hrl").

-export([openapi_input_step_impl/0]).

-export([openapi_input_step_impl/1]).

-export_type([openapi_input_step_impl/0]).

-type openapi_input_step_impl() ::
  [ {'_class', binary() }
  | {'_links', openapi_input_step_impllinks:openapi_input_step_impllinks() }
  | {'id', binary() }
  | {'message', binary() }
  | {'ok', binary() }
  | {'parameters', list(openapi_string_parameter_definition:openapi_string_parameter_definition()) }
  | {'submitter', binary() }
  ].


openapi_input_step_impl() ->
    openapi_input_step_impl([]).

openapi_input_step_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_input_step_impllinks:openapi_input_step_impllinks() }
            , {'id', binary() }
            , {'message', binary() }
            , {'ok', binary() }
            , {'parameters', list(openapi_string_parameter_definition:openapi_string_parameter_definition()) }
            , {'submitter', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

