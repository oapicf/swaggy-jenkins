part of swagger.api;


@Entity()
class HudsonMasterComputermonitorData {
  
  @Property(name: 'hudson.node_monitors.SwapSpaceMonitor')
  SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.TemporarySpaceMonitor')
  DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.DiskSpaceMonitor')
  DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ArchitectureMonitor')
  String hudsonNodeMonitorsArchitectureMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ResponseTimeMonitor')
  ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ClockMonitor')
  ClockDifference hudsonNodeMonitorsClockMonitor = null;
  

  @Property(name: '_class')
  String _class = null;
  
  HudsonMasterComputermonitorData();

  @override
  String toString()  {
    return 'HudsonMasterComputermonitorData[hudsonNodeMonitorsSwapSpaceMonitor=$hudsonNodeMonitorsSwapSpaceMonitor, hudsonNodeMonitorsTemporarySpaceMonitor=$hudsonNodeMonitorsTemporarySpaceMonitor, hudsonNodeMonitorsDiskSpaceMonitor=$hudsonNodeMonitorsDiskSpaceMonitor, hudsonNodeMonitorsArchitectureMonitor=$hudsonNodeMonitorsArchitectureMonitor, hudsonNodeMonitorsResponseTimeMonitor=$hudsonNodeMonitorsResponseTimeMonitor, hudsonNodeMonitorsClockMonitor=$hudsonNodeMonitorsClockMonitor, _class=$_class, ]';
  }

}

