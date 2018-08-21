-module(openapi_disk_space_monitor_descriptor_disk_space).

-export([encode/1]).

-export_type([openapi_disk_space_monitor_descriptor_disk_space/0]).

-type openapi_disk_space_monitor_descriptor_disk_space() ::
    #{ '_class' => binary(),
       'timestamp' => integer(),
       'path' => binary(),
       'size' => integer()
     }.

encode(#{ '_class' := Class,
          'timestamp' := Timestamp,
          'path' := Path,
          'size' := Size
        }) ->
    #{ '_class' => Class,
       'timestamp' => Timestamp,
       'path' => Path,
       'size' => Size
     }.
