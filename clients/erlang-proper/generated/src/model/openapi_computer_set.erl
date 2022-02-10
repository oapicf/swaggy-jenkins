-module(openapi_computer_set).

-include("openapi.hrl").

-export([openapi_computer_set/0]).

-export([openapi_computer_set/1]).

-export_type([openapi_computer_set/0]).

-type openapi_computer_set() ::
  [ {'_class', binary() }
  | {'busyExecutors', integer() }
  | {'computer', list(openapi_hudson_master_computer:openapi_hudson_master_computer()) }
  | {'displayName', binary() }
  | {'totalExecutors', integer() }
  ].


openapi_computer_set() ->
    openapi_computer_set([]).

openapi_computer_set(Fields) ->
  Default = [ {'_class', binary() }
            , {'busyExecutors', integer() }
            , {'computer', list(openapi_hudson_master_computer:openapi_hudson_master_computer()) }
            , {'displayName', binary() }
            , {'totalExecutors', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

