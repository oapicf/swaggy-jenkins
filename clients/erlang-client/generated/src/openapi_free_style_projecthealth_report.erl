-module(openapi_free_style_projecthealth_report).

-export([encode/1]).

-export_type([openapi_free_style_projecthealth_report/0]).

-type openapi_free_style_projecthealth_report() ::
    #{ 'description' => binary(),
       'iconClassName' => binary(),
       'iconUrl' => binary(),
       'score' => integer(),
       '_class' => binary()
     }.

encode(#{ 'description' := Description,
          'iconClassName' := IconClassName,
          'iconUrl' := IconUrl,
          'score' := Score,
          '_class' := Class
        }) ->
    #{ 'description' => Description,
       'iconClassName' => IconClassName,
       'iconUrl' => IconUrl,
       'score' => Score,
       '_class' => Class
     }.
