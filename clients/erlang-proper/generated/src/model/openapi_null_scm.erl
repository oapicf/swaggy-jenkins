-module(openapi_null_scm).

-include("openapi.hrl").

-export([openapi_null_scm/0]).

-export([openapi_null_scm/1]).

-export_type([openapi_null_scm/0]).

-type openapi_null_scm() ::
  [ {'_class', binary() }
  ].


openapi_null_scm() ->
    openapi_null_scm([]).

openapi_null_scm(Fields) ->
  Default = [ {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

