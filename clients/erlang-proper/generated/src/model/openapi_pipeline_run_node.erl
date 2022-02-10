-module(openapi_pipeline_run_node).

-include("openapi.hrl").

-export([openapi_pipeline_run_node/0]).

-export([openapi_pipeline_run_node/1]).

-export_type([openapi_pipeline_run_node/0]).

-type openapi_pipeline_run_node() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'durationInMillis', integer() }
  | {'edges', list(openapi_pipeline_run_nodeedges:openapi_pipeline_run_nodeedges()) }
  | {'id', binary() }
  | {'result', binary() }
  | {'startTime', binary() }
  | {'state', binary() }
  ].


openapi_pipeline_run_node() ->
    openapi_pipeline_run_node([]).

openapi_pipeline_run_node(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'durationInMillis', integer() }
            , {'edges', list(openapi_pipeline_run_nodeedges:openapi_pipeline_run_nodeedges()) }
            , {'id', binary() }
            , {'result', binary() }
            , {'startTime', binary() }
            , {'state', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

