-module(openapi_pipeline_folder_impl).

-export([encode/1]).

-export_type([openapi_pipeline_folder_impl/0]).

-type openapi_pipeline_folder_impl() ::
    #{ '_class' => binary(),
       'displayName' => binary(),
       'fullName' => binary(),
       'name' => binary(),
       'organization' => binary(),
       'numberOfFolders' => integer(),
       'numberOfPipelines' => integer()
     }.

encode(#{ '_class' := Class,
          'displayName' := DisplayName,
          'fullName' := FullName,
          'name' := Name,
          'organization' := Organization,
          'numberOfFolders' := NumberOfFolders,
          'numberOfPipelines' := NumberOfPipelines
        }) ->
    #{ '_class' => Class,
       'displayName' => DisplayName,
       'fullName' => FullName,
       'name' => Name,
       'organization' => Organization,
       'numberOfFolders' => NumberOfFolders,
       'numberOfPipelines' => NumberOfPipelines
     }.
