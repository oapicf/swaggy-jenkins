-module(openapi_disk_space_monitor_descriptor_disk_space).

-include("openapi.hrl").

-export([openapi_disk_space_monitor_descriptor_disk_space/0]).

-export([openapi_disk_space_monitor_descriptor_disk_space/1]).

-export_type([openapi_disk_space_monitor_descriptor_disk_space/0]).

-type openapi_disk_space_monitor_descriptor_disk_space() ::
  [ {'_class', binary() }
  | {'timestamp', integer() }
  | {'path', binary() }
  | {'size', integer() }
  ].


openapi_disk_space_monitor_descriptor_disk_space() ->
    openapi_disk_space_monitor_descriptor_disk_space([]).

openapi_disk_space_monitor_descriptor_disk_space(Fields) ->
  Default = [ {'_class', binary() }
            , {'timestamp', integer() }
            , {'path', binary() }
            , {'size', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

