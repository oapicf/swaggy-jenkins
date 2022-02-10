-module(openapi_hudson_master_computerexecutors).

-include("openapi.hrl").

-export([openapi_hudson_master_computerexecutors/0]).

-export([openapi_hudson_master_computerexecutors/1]).

-export_type([openapi_hudson_master_computerexecutors/0]).

-type openapi_hudson_master_computerexecutors() ::
  [ {'currentExecutable', openapi_free_style_build:openapi_free_style_build() }
  | {'idle', boolean() }
  | {'likelyStuck', boolean() }
  | {'number', integer() }
  | {'progress', integer() }
  | {'_class', binary() }
  ].


openapi_hudson_master_computerexecutors() ->
    openapi_hudson_master_computerexecutors([]).

openapi_hudson_master_computerexecutors(Fields) ->
  Default = [ {'currentExecutable', openapi_free_style_build:openapi_free_style_build() }
            , {'idle', boolean() }
            , {'likelyStuck', boolean() }
            , {'number', integer() }
            , {'progress', integer() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

