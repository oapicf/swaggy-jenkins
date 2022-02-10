-module(openapi_free_style_projectactions).

-include("openapi.hrl").

-export([openapi_free_style_projectactions/0]).

-export([openapi_free_style_projectactions/1]).

-export_type([openapi_free_style_projectactions/0]).

-type openapi_free_style_projectactions() ::
  [ {'_class', binary() }
  ].


openapi_free_style_projectactions() ->
    openapi_free_style_projectactions([]).

openapi_free_style_projectactions(Fields) ->
  Default = [ {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

