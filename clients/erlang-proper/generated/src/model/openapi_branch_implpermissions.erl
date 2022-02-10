-module(openapi_branch_implpermissions).

-include("openapi.hrl").

-export([openapi_branch_implpermissions/0]).

-export([openapi_branch_implpermissions/1]).

-export_type([openapi_branch_implpermissions/0]).

-type openapi_branch_implpermissions() ::
  [ {'create', boolean() }
  | {'read', boolean() }
  | {'start', boolean() }
  | {'stop', boolean() }
  | {'_class', binary() }
  ].


openapi_branch_implpermissions() ->
    openapi_branch_implpermissions([]).

openapi_branch_implpermissions(Fields) ->
  Default = [ {'create', boolean() }
            , {'read', boolean() }
            , {'start', boolean() }
            , {'stop', boolean() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

