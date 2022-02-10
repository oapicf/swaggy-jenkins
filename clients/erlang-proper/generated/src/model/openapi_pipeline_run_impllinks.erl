-module(openapi_pipeline_run_impllinks).

-include("openapi.hrl").

-export([openapi_pipeline_run_impllinks/0]).

-export([openapi_pipeline_run_impllinks/1]).

-export_type([openapi_pipeline_run_impllinks/0]).

-type openapi_pipeline_run_impllinks() ::
  [ {'nodes', openapi_link:openapi_link() }
  | {'log', openapi_link:openapi_link() }
  | {'self', openapi_link:openapi_link() }
  | {'actions', openapi_link:openapi_link() }
  | {'steps', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_pipeline_run_impllinks() ->
    openapi_pipeline_run_impllinks([]).

openapi_pipeline_run_impllinks(Fields) ->
  Default = [ {'nodes', openapi_link:openapi_link() }
            , {'log', openapi_link:openapi_link() }
            , {'self', openapi_link:openapi_link() }
            , {'actions', openapi_link:openapi_link() }
            , {'steps', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

