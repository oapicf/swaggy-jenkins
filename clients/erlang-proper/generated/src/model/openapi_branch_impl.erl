-module(openapi_branch_impl).

-include("openapi.hrl").

-export([openapi_branch_impl/0]).

-export([openapi_branch_impl/1]).

-export_type([openapi_branch_impl/0]).

-type openapi_branch_impl() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'estimatedDurationInMillis', integer() }
  | {'fullDisplayName', binary() }
  | {'fullName', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'parameters', list(openapi_string_parameter_definition:openapi_string_parameter_definition()) }
  | {'permissions', openapi_branch_implpermissions:openapi_branch_implpermissions() }
  | {'weatherScore', integer() }
  | {'pullRequest', binary() }
  | {'_links', openapi_branch_impllinks:openapi_branch_impllinks() }
  | {'latestRun', openapi_pipeline_run_impl:openapi_pipeline_run_impl() }
  ].


openapi_branch_impl() ->
    openapi_branch_impl([]).

openapi_branch_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'estimatedDurationInMillis', integer() }
            , {'fullDisplayName', binary() }
            , {'fullName', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'parameters', list(openapi_string_parameter_definition:openapi_string_parameter_definition()) }
            , {'permissions', openapi_branch_implpermissions:openapi_branch_implpermissions() }
            , {'weatherScore', integer() }
            , {'pullRequest', binary() }
            , {'_links', openapi_branch_impllinks:openapi_branch_impllinks() }
            , {'latestRun', openapi_pipeline_run_impl:openapi_pipeline_run_impl() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

