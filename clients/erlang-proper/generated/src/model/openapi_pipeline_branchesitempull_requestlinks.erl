-module(openapi_pipeline_branchesitempull_requestlinks).

-include("openapi.hrl").

-export([openapi_pipeline_branchesitempull_requestlinks/0]).

-export([openapi_pipeline_branchesitempull_requestlinks/1]).

-export_type([openapi_pipeline_branchesitempull_requestlinks/0]).

-type openapi_pipeline_branchesitempull_requestlinks() ::
  [ {'self', binary() }
  | {'_class', binary() }
  ].


openapi_pipeline_branchesitempull_requestlinks() ->
    openapi_pipeline_branchesitempull_requestlinks([]).

openapi_pipeline_branchesitempull_requestlinks(Fields) ->
  Default = [ {'self', binary() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

