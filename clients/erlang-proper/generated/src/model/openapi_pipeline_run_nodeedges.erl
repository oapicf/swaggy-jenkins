-module(openapi_pipeline_run_nodeedges).

-include("openapi.hrl").

-export([openapi_pipeline_run_nodeedges/0]).

-export([openapi_pipeline_run_nodeedges/1]).

-export_type([openapi_pipeline_run_nodeedges/0]).

-type openapi_pipeline_run_nodeedges() ::
  [ {'id', binary() }
  | {'_class', binary() }
  ].


openapi_pipeline_run_nodeedges() ->
    openapi_pipeline_run_nodeedges([]).

openapi_pipeline_run_nodeedges(Fields) ->
  Default = [ {'id', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

