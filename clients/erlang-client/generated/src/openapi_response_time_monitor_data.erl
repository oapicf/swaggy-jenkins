-module(openapi_response_time_monitor_data).

-export([encode/1]).

-export_type([openapi_response_time_monitor_data/0]).

-type openapi_response_time_monitor_data() ::
    #{ '_class' => binary(),
       'timestamp' => integer(),
       'average' => integer()
     }.

encode(#{ '_class' := Class,
          'timestamp' := Timestamp,
          'average' := Average
        }) ->
    #{ '_class' => Class,
       'timestamp' => Timestamp,
       'average' => Average
     }.
