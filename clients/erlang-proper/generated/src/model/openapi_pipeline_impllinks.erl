-module(openapi_pipeline_impllinks).

-include("openapi.hrl").

-export([openapi_pipeline_impllinks/0]).

-export([openapi_pipeline_impllinks/1]).

-export_type([openapi_pipeline_impllinks/0]).

-type openapi_pipeline_impllinks() ::
  [ {'runs', openapi_link:openapi_link() }
  | {'self', openapi_link:openapi_link() }
  | {'queue', openapi_link:openapi_link() }
  | {'actions', openapi_link:openapi_link() }
  | {'_class', binary() }
  ].


openapi_pipeline_impllinks() ->
    openapi_pipeline_impllinks([]).

openapi_pipeline_impllinks(Fields) ->
  Default = [ {'runs', openapi_link:openapi_link() }
            , {'self', openapi_link:openapi_link() }
            , {'queue', openapi_link:openapi_link() }
            , {'actions', openapi_link:openapi_link() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

