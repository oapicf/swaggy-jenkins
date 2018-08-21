-module(openapi_organisation).

-export([encode/1]).

-export_type([openapi_organisation/0]).

-type openapi_organisation() ::
    #{ '_class' => binary(),
       'name' => binary()
     }.

encode(#{ '_class' := Class,
          'name' := Name
        }) ->
    #{ '_class' => Class,
       'name' => Name
     }.
