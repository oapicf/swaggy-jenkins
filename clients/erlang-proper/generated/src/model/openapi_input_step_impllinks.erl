-module(openapi_input_step_impllinks).

-include("openapi.hrl").

-export([openapi_input_step_impllinks/0]).

-export([openapi_input_step_impllinks/1]).

-export_type([openapi_input_step_impllinks/0]).

-type openapi_input_step_impllinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_input_step_impllinks() ->
    openapi_input_step_impllinks([]).

openapi_input_step_impllinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

