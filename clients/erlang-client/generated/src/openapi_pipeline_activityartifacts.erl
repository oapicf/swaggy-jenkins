-module(openapi_pipeline_activityartifacts).

-export([encode/1]).

-export_type([openapi_pipeline_activityartifacts/0]).

-type openapi_pipeline_activityartifacts() ::
    #{ 'name' => binary(),
       'size' => integer(),
       'url' => binary(),
       '_class' => binary()
     }.

encode(#{ 'name' := Name,
          'size' := Size,
          'url' := Url,
          '_class' := Class
        }) ->
    #{ 'name' => Name,
       'size' => Size,
       'url' => Url,
       '_class' => Class
     }.
