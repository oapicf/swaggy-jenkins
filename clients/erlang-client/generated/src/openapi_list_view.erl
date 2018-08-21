-module(openapi_list_view).

-export([encode/1]).

-export_type([openapi_list_view/0]).

-type openapi_list_view() ::
    #{ '_class' => binary(),
       'description' => binary(),
       'jobs' => list(),
       'name' => binary(),
       'url' => binary()
     }.

encode(#{ '_class' := Class,
          'description' := Description,
          'jobs' := Jobs,
          'name' := Name,
          'url' := Url
        }) ->
    #{ '_class' => Class,
       'description' => Description,
       'jobs' => Jobs,
       'name' => Name,
       'url' => Url
     }.
