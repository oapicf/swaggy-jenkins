-module(openapi_pipeline_folder_impl).

-include("openapi.hrl").

-export([openapi_pipeline_folder_impl/0]).

-export([openapi_pipeline_folder_impl/1]).

-export_type([openapi_pipeline_folder_impl/0]).

-type openapi_pipeline_folder_impl() ::
  [ {'_class', binary() }
  | {'displayName', binary() }
  | {'fullName', binary() }
  | {'name', binary() }
  | {'organization', binary() }
  | {'numberOfFolders', integer() }
  | {'numberOfPipelines', integer() }
  ].


openapi_pipeline_folder_impl() ->
    openapi_pipeline_folder_impl([]).

openapi_pipeline_folder_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'displayName', binary() }
            , {'fullName', binary() }
            , {'name', binary() }
            , {'organization', binary() }
            , {'numberOfFolders', integer() }
            , {'numberOfPipelines', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

