-module(openapi_pipeline_step_impl).

-include("openapi.hrl").

-export([openapi_pipeline_step_impl/0]).

-export([openapi_pipeline_step_impl/1]).

-export_type([openapi_pipeline_step_impl/0]).

-type openapi_pipeline_step_impl() ::
  [ {'_class', binary() }
  | {'_links', openapi_pipeline_step_impllinks:openapi_pipeline_step_impllinks() }
  | {'displayName', binary() }
  | {'durationInMillis', integer() }
  | {'id', binary() }
  | {'input', openapi_input_step_impl:openapi_input_step_impl() }
  | {'result', binary() }
  | {'startTime', binary() }
  | {'state', binary() }
  ].


openapi_pipeline_step_impl() ->
    openapi_pipeline_step_impl([]).

openapi_pipeline_step_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_pipeline_step_impllinks:openapi_pipeline_step_impllinks() }
            , {'displayName', binary() }
            , {'durationInMillis', integer() }
            , {'id', binary() }
            , {'input', openapi_input_step_impl:openapi_input_step_impl() }
            , {'result', binary() }
            , {'startTime', binary() }
            , {'state', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

