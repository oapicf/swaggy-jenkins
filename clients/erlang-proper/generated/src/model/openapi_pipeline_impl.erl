-module(openapi_pipeline_impl).

-include("openapi.hrl").

-export([openapi_pipeline_impl/0]).

-export([openapi_pipeline_impl/1]).

-export_type([openapi_pipeline_impl/0]).

-type openapi_pipeline_impl() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'estimatedDurationInMillis', integer() }
  | {'fullName', binary() }
  | {'latestRun', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'weatherScore', integer() }
  | {'_links', openapi_pipeline_impllinks:openapi_pipeline_impllinks() }
  ].


openapi_pipeline_impl() ->
    openapi_pipeline_impl([]).

openapi_pipeline_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'estimatedDurationInMillis', integer() }
            , {'fullName', binary() }
            , {'latestRun', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'weatherScore', integer() }
            , {'_links', openapi_pipeline_impllinks:openapi_pipeline_impllinks() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

