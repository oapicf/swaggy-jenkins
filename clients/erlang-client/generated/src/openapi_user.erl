-module(openapi_user).

-export([encode/1]).

-export_type([openapi_user/0]).

-type openapi_user() ::
    #{ '_class' => binary(),
       'id' => binary(),
       'fullName' => binary(),
       'email' => binary(),
       'name' => binary()
     }.

encode(#{ '_class' := Class,
          'id' := Id,
          'fullName' := FullName,
          'email' := Email,
          'name' := Name
        }) ->
    #{ '_class' => Class,
       'id' => Id,
       'fullName' => FullName,
       'email' => Email,
       'name' => Name
     }.
