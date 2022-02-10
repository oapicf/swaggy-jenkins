import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:openapi/model/response_time_monitor_data.dart';

import 'package:openapi/model/disk_space_monitor_descriptor_disk_space.dart';

import 'package:openapi/model/clock_difference.dart';

import 'package:openapi/model/swap_space_monitor_memory_usage2.dart';

part 'hudson_master_computermonitor_data.jser.dart';

class HudsonMasterComputermonitorData {
  
  @Alias('hudson.node_monitors.SwapSpaceMonitor', isNullable: false,  )
  final SwapSpaceMonitorMemoryUsage2 hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor;
  
  @Alias('hudson.node_monitors.TemporarySpaceMonitor', isNullable: false,  )
  final DiskSpaceMonitorDescriptorDiskSpace hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor;
  
  @Alias('hudson.node_monitors.DiskSpaceMonitor', isNullable: false,  )
  final DiskSpaceMonitorDescriptorDiskSpace hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor;
  
  @Alias('hudson.node_monitors.ArchitectureMonitor', isNullable: false,  )
  final String hudsonPeriodNodeMonitorsPeriodArchitectureMonitor;
  
  @Alias('hudson.node_monitors.ResponseTimeMonitor', isNullable: false,  )
  final ResponseTimeMonitorData hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor;
  
  @Alias('hudson.node_monitors.ClockMonitor', isNullable: false,  )
  final ClockDifference hudsonPeriodNodeMonitorsPeriodClockMonitor;
  
  @Alias('_class', isNullable: false,  )
  final String class_;
  

  HudsonMasterComputermonitorData(
      

{
     this.hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor = null,  
     this.hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor = null,  
     this.hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor = null,  
     this.hudsonPeriodNodeMonitorsPeriodArchitectureMonitor = null,  
     this.hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor = null,  
     this.hudsonPeriodNodeMonitorsPeriodClockMonitor = null,  
     this.class_ = null 
    
    }
  );

  @override
  String toString() {
    return 'HudsonMasterComputermonitorData[hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodSwapSpaceMonitor, hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor=$hudsonPeriodNodeMonitorsPeriodTemporarySpaceMonitor, hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor=$hudsonPeriodNodeMonitorsPeriodDiskSpaceMonitor, hudsonPeriodNodeMonitorsPeriodArchitectureMonitor=$hudsonPeriodNodeMonitorsPeriodArchitectureMonitor, hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor=$hudsonPeriodNodeMonitorsPeriodResponseTimeMonitor, hudsonPeriodNodeMonitorsPeriodClockMonitor=$hudsonPeriodNodeMonitorsPeriodClockMonitor, class_=$class_, ]';
  }
}

@GenSerializer(nullableFields: true)
class HudsonMasterComputermonitorDataSerializer extends Serializer<HudsonMasterComputermonitorData> with _$HudsonMasterComputermonitorDataSerializer {

}

