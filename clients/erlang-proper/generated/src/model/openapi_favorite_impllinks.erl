-module(openapi_favorite_impllinks).

-include("openapi.hrl").

-export([openapi_favorite_impllinks/0]).

-export([openapi_favorite_impllinks/1]).

-export_type([openapi_favorite_impllinks/0]).

-type openapi_favorite_impllinks() ::
  [ {'self', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_favorite_impllinks() ->
    openapi_favorite_impllinks([]).

openapi_favorite_impllinks(Fields) ->
  Default = [ {'self', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

