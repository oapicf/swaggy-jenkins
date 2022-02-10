-module(openapi_github_repositorypermissions).

-include("openapi.hrl").

-export([openapi_github_repositorypermissions/0]).

-export([openapi_github_repositorypermissions/1]).

-export_type([openapi_github_repositorypermissions/0]).

-type openapi_github_repositorypermissions() ::
  [ {'admin', boolean() }
  | {'push', boolean() }
  | {'pull', boolean() }
  | {'_class', binary() }
  ].


openapi_github_repositorypermissions() ->
    openapi_github_repositorypermissions([]).

openapi_github_repositorypermissions(Fields) ->
  Default = [ {'admin', boolean() }
            , {'push', boolean() }
            , {'pull', boolean() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

