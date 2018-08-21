-module(openapi_hudson_master_computermonitor_data).

-export([encode/1]).

-export_type([openapi_hudson_master_computermonitor_data/0]).

-type openapi_hudson_master_computermonitor_data() ::
    #{ 'hudson_node_monitors_SwapSpaceMonitor' => openapi_swap_space_monitor_memory_usage2:openapi_swap_space_monitor_memory_usage2(),
       'hudson_node_monitors_TemporarySpaceMonitor' => openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space(),
       'hudson_node_monitors_DiskSpaceMonitor' => openapi_disk_space_monitor_descriptor_disk_space:openapi_disk_space_monitor_descriptor_disk_space(),
       'hudson_node_monitors_ArchitectureMonitor' => binary(),
       'hudson_node_monitors_ResponseTimeMonitor' => openapi_response_time_monitor_data:openapi_response_time_monitor_data(),
       'hudson_node_monitors_ClockMonitor' => openapi_clock_difference:openapi_clock_difference(),
       '_class' => binary()
     }.

encode(#{ 'hudson_node_monitors_SwapSpaceMonitor' := HudsonNodeMonitorsSwapSpaceMonitor,
          'hudson_node_monitors_TemporarySpaceMonitor' := HudsonNodeMonitorsTemporarySpaceMonitor,
          'hudson_node_monitors_DiskSpaceMonitor' := HudsonNodeMonitorsDiskSpaceMonitor,
          'hudson_node_monitors_ArchitectureMonitor' := HudsonNodeMonitorsArchitectureMonitor,
          'hudson_node_monitors_ResponseTimeMonitor' := HudsonNodeMonitorsResponseTimeMonitor,
          'hudson_node_monitors_ClockMonitor' := HudsonNodeMonitorsClockMonitor,
          '_class' := Class
        }) ->
    #{ 'hudson.node_monitors.SwapSpaceMonitor' => HudsonNodeMonitorsSwapSpaceMonitor,
       'hudson.node_monitors.TemporarySpaceMonitor' => HudsonNodeMonitorsTemporarySpaceMonitor,
       'hudson.node_monitors.DiskSpaceMonitor' => HudsonNodeMonitorsDiskSpaceMonitor,
       'hudson.node_monitors.ArchitectureMonitor' => HudsonNodeMonitorsArchitectureMonitor,
       'hudson.node_monitors.ResponseTimeMonitor' => HudsonNodeMonitorsResponseTimeMonitor,
       'hudson.node_monitors.ClockMonitor' => HudsonNodeMonitorsClockMonitor,
       '_class' => Class
     }.
