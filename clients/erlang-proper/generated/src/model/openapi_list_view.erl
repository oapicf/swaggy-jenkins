-module(openapi_list_view).

-include("openapi.hrl").

-export([openapi_list_view/0]).

-export([openapi_list_view/1]).

-export_type([openapi_list_view/0]).

-type openapi_list_view() ::
  [ {'_class', binary() }
  | {'description', binary() }
  | {'jobs', list(openapi_free_style_project:openapi_free_style_project()) }
  | {'name', binary() }
  | {'url', binary() }
  ].


openapi_list_view() ->
    openapi_list_view([]).

openapi_list_view(Fields) ->
  Default = [ {'_class', binary() }
            , {'description', binary() }
            , {'jobs', list(openapi_free_style_project:openapi_free_style_project()) }
            , {'name', binary() }
            , {'url', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

