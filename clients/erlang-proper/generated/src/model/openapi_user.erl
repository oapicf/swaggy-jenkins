-module(openapi_user).

-include("openapi.hrl").

-export([openapi_user/0]).

-export([openapi_user/1]).

-export_type([openapi_user/0]).

-type openapi_user() ::
  [ {'_class', binary() }
  | {'id', binary() }
  | {'fullName', binary() }
  | {'email', binary() }
  | {'name', binary() }
  ].


openapi_user() ->
    openapi_user([]).

openapi_user(Fields) ->
  Default = [ {'_class', binary() }
            , {'id', binary() }
            , {'fullName', binary() }
            , {'email', binary() }
            , {'name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

