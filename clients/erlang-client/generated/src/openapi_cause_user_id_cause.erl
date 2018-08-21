-module(openapi_cause_user_id_cause).

-export([encode/1]).

-export_type([openapi_cause_user_id_cause/0]).

-type openapi_cause_user_id_cause() ::
    #{ '_class' => binary(),
       'shortDescription' => binary(),
       'userId' => binary(),
       'userName' => binary()
     }.

encode(#{ '_class' := Class,
          'shortDescription' := ShortDescription,
          'userId' := UserId,
          'userName' := UserName
        }) ->
    #{ '_class' => Class,
       'shortDescription' => ShortDescription,
       'userId' => UserId,
       'userName' => UserName
     }.
