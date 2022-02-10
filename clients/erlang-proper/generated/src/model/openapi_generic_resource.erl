-module(openapi_generic_resource).

-include("openapi.hrl").

-export([openapi_generic_resource/0]).

-export([openapi_generic_resource/1]).

-export_type([openapi_generic_resource/0]).

-type openapi_generic_resource() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'durationInMillis', integer() }
  | {'id', binary() }
  | {'result', binary() }
  | {'startTime', binary() }
  ].


openapi_generic_resource() ->
    openapi_generic_resource([]).

openapi_generic_resource(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'durationInMillis', integer() }
            , {'id', binary() }
            , {'result', binary() }
            , {'startTime', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

