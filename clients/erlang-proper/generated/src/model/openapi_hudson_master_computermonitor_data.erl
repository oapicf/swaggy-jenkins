-module(openapi_hudson_master_computermonitor_data).

-include("openapi.hrl").

-export([openapi_hudson_master_computermonitor_data/0]).

-export([openapi_hudson_master_computermonitor_data/1]).

-export_type([openapi_hudson_master_computermonitor_data/0]).

-type openapi_hudson_master_computermonitor_data() ::
  [ {'hudson_node_monitors_SwapSpaceMonitor', openapi_swap_space_monitor_memory_usage2:openapi_swap_space_monitor_memory_usage2() }
  | {'hudson_node_monitors_TemporarySpaceMonitor', openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space() }
  | {'hudson_node_monitors_DiskSpaceMonitor', openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space() }
  | {'hudson_node_monitors_ArchitectureMonitor', binary() }
  | {'hudson_node_monitors_ResponseTimeMonitor', openapi_response_time_monitor_data:openapi_response_time_monitor_data() }
  | {'hudson_node_monitors_ClockMonitor', openapi_clock_difference:openapi_clock_difference() }
  | {'_class', binary() }
  ].


openapi_hudson_master_computermonitor_data() ->
    openapi_hudson_master_computermonitor_data([]).

openapi_hudson_master_computermonitor_data(Fields) ->
  Default = [ {'hudson.node_monitors.SwapSpaceMonitor', openapi_swap_space_monitor_memory_usage2:openapi_swap_space_monitor_memory_usage2() }
            , {'hudson.node_monitors.TemporarySpaceMonitor', openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space() }
            , {'hudson.node_monitors.DiskSpaceMonitor', openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space() }
            , {'hudson.node_monitors.ArchitectureMonitor', binary() }
            , {'hudson.node_monitors.ResponseTimeMonitor', openapi_response_time_monitor_data:openapi_response_time_monitor_data() }
            , {'hudson.node_monitors.ClockMonitor', openapi_clock_difference:openapi_clock_difference() }
            , {'_class', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

