-module(openapi_computer_set).

-export([encode/1]).

-export_type([openapi_computer_set/0]).

-type openapi_computer_set() ::
    #{ '_class' => binary(),
       'busyExecutors' => integer(),
       'computer' => list(),
       'displayName' => binary(),
       'totalExecutors' => integer()
     }.

encode(#{ '_class' := Class,
          'busyExecutors' := BusyExecutors,
          'computer' := Computer,
          'displayName' := DisplayName,
          'totalExecutors' := TotalExecutors
        }) ->
    #{ '_class' => Class,
       'busyExecutors' => BusyExecutors,
       'computer' => Computer,
       'displayName' => DisplayName,
       'totalExecutors' => TotalExecutors
     }.
