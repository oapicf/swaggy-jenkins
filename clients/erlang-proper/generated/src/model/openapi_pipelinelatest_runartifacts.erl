-module(openapi_pipelinelatest_runartifacts).

-include("openapi.hrl").

-export([openapi_pipelinelatest_runartifacts/0]).

-export([openapi_pipelinelatest_runartifacts/1]).

-export_type([openapi_pipelinelatest_runartifacts/0]).

-type openapi_pipelinelatest_runartifacts() ::
  [ {'name', binary() }
  | {'size', integer() }
  | {'url', binary() }
  | {'_class', binary() }
  ].


openapi_pipelinelatest_runartifacts() ->
    openapi_pipelinelatest_runartifacts([]).

openapi_pipelinelatest_runartifacts(Fields) ->
  Default = [ {'name', binary() }
            , {'size', integer() }
            , {'url', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

