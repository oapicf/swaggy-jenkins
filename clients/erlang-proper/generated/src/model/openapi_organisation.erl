-module(openapi_organisation).

-include("openapi.hrl").

-export([openapi_organisation/0]).

-export([openapi_organisation/1]).

-export_type([openapi_organisation/0]).

-type openapi_organisation() ::
  [ {'_class', binary() }
  | {'name', binary() }
  ].


openapi_organisation() ->
    openapi_organisation([]).

openapi_organisation(Fields) ->
  Default = [ {'_class', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

