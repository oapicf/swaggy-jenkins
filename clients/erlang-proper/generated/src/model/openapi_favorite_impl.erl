-module(openapi_favorite_impl).

-include("openapi.hrl").

-export([openapi_favorite_impl/0]).

-export([openapi_favorite_impl/1]).

-export_type([openapi_favorite_impl/0]).

-type openapi_favorite_impl() ::
  [ {'_class', binary() }
  | {'_links', openapi_favorite_impllinks:openapi_favorite_impllinks() }
  | {'item', openapi_pipeline_impl:openapi_pipeline_impl() }
  ].


openapi_favorite_impl() ->
    openapi_favorite_impl([]).

openapi_favorite_impl(Fields) ->
  Default = [ {'_class', binary() }
            , {'_links', openapi_favorite_impllinks:openapi_favorite_impllinks() }
            , {'item', openapi_pipeline_impl:openapi_pipeline_impl() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

