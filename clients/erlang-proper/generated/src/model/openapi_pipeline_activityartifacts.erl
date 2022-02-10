-module(openapi_pipeline_activityartifacts).

-include("openapi.hrl").

-export([openapi_pipeline_activityartifacts/0]).

-export([openapi_pipeline_activityartifacts/1]).

-export_type([openapi_pipeline_activityartifacts/0]).

-type openapi_pipeline_activityartifacts() ::
  [ {'name', binary() }
  | {'size', integer() }
  | {'url', binary() }
  | {'_class', binary() }
  ].


openapi_pipeline_activityartifacts() ->
    openapi_pipeline_activityartifacts([]).

openapi_pipeline_activityartifacts(Fields) ->
  Default = [ {'name', binary() }
            , {'size', integer() }
            , {'url', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

