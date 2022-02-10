-module(openapi_cause_user_id_cause).

-include("openapi.hrl").

-export([openapi_cause_user_id_cause/0]).

-export([openapi_cause_user_id_cause/1]).

-export_type([openapi_cause_user_id_cause/0]).

-type openapi_cause_user_id_cause() ::
  [ {'_class', binary() }
  | {'shortDescription', binary() }
  | {'userId', binary() }
  | {'userName', binary() }
  ].


openapi_cause_user_id_cause() ->
    openapi_cause_user_id_cause([]).

openapi_cause_user_id_cause(Fields) ->
  Default = [ {'_class', binary() }
            , {'shortDescription', binary() }
            , {'userId', binary() }
            , {'userName', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

