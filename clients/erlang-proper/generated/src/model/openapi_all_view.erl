-module(openapi_all_view).

-include("openapi.hrl").

-export([openapi_all_view/0]).

-export([openapi_all_view/1]).

-export_type([openapi_all_view/0]).

-type openapi_all_view() ::
  [ {'_class', binary() }
  | {'name', binary() }
  | {'url', binary() }
  ].


openapi_all_view() ->
    openapi_all_view([]).

openapi_all_view(Fields) ->
  Default = [ {'_class', binary() }
            , {'name', binary() }
            , {'url', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

