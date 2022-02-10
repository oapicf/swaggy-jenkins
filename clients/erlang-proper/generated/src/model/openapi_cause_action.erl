-module(openapi_cause_action).

-include("openapi.hrl").

-export([openapi_cause_action/0]).

-export([openapi_cause_action/1]).

-export_type([openapi_cause_action/0]).

-type openapi_cause_action() ::
  [ {'_class', binary() }
  | {'causes', list(openapi_cause_user_id_cause:openapi_cause_user_id_cause()) }
  ].


openapi_cause_action() ->
    openapi_cause_action([]).

openapi_cause_action(Fields) ->
  Default = [ {'_class', binary() }
            , {'causes', list(openapi_cause_user_id_cause:openapi_cause_user_id_cause()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

