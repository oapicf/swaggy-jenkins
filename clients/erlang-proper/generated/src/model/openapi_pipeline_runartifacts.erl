-module(openapi_pipeline_runartifacts).

-include("openapi.hrl").

-export([openapi_pipeline_runartifacts/0]).

-export([openapi_pipeline_runartifacts/1]).

-export_type([openapi_pipeline_runartifacts/0]).

-type openapi_pipeline_runartifacts() ::
  [ {'name', binary() }
  | {'size', integer() }
  | {'url', binary() }
  | {'_class', binary() }
  ].


openapi_pipeline_runartifacts() ->
    openapi_pipeline_runartifacts([]).

openapi_pipeline_runartifacts(Fields) ->
  Default = [ {'name', binary() }
            , {'size', integer() }
            , {'url', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

