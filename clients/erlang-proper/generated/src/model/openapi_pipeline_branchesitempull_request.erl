-module(openapi_pipeline_branchesitempull_request).

-include("openapi.hrl").

-export([openapi_pipeline_branchesitempull_request/0]).

-export([openapi_pipeline_branchesitempull_request/1]).

-export_type([openapi_pipeline_branchesitempull_request/0]).

-type openapi_pipeline_branchesitempull_request() ::
  [ {'_links', openapi_pipeline_branchesitempull_requestlinks:openapi_pipeline_branchesitempull_requestlinks() }
  | {'author', binary() }
  | {'id', binary() }
  | {'title', binary() }
  | {'url', binary() }
  | {'_class', binary() }
  ].


openapi_pipeline_branchesitempull_request() ->
    openapi_pipeline_branchesitempull_request([]).

openapi_pipeline_branchesitempull_request(Fields) ->
  Default = [ {'_links', openapi_pipeline_branchesitempull_requestlinks:openapi_pipeline_branchesitempull_requestlinks() }
            , {'author', binary() }
            , {'id', binary() }
            , {'title', binary() }
            , {'url', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

