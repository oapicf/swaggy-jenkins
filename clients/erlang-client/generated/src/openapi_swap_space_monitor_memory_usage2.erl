-module(openapi_swap_space_monitor_memory_usage2).

-export([encode/1]).

-export_type([openapi_swap_space_monitor_memory_usage2/0]).

-type openapi_swap_space_monitor_memory_usage2() ::
    #{ '_class' => binary(),
       'availablePhysicalMemory' => integer(),
       'availableSwapSpace' => integer(),
       'totalPhysicalMemory' => integer(),
       'totalSwapSpace' => integer()
     }.

encode(#{ '_class' := Class,
          'availablePhysicalMemory' := AvailablePhysicalMemory,
          'availableSwapSpace' := AvailableSwapSpace,
          'totalPhysicalMemory' := TotalPhysicalMemory,
          'totalSwapSpace' := TotalSwapSpace
        }) ->
    #{ '_class' => Class,
       'availablePhysicalMemory' => AvailablePhysicalMemory,
       'availableSwapSpace' => AvailableSwapSpace,
       'totalPhysicalMemory' => TotalPhysicalMemory,
       'totalSwapSpace' => TotalSwapSpace
     }.
