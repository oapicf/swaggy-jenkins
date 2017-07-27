part of swagger.api;


@Entity()
class HudsonmodelHudsonMasterComputerMonitorData {
  
  @Property(name: 'hudson.node_monitors.SwapSpaceMonitor')
  HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.TemporarySpaceMonitor')
  HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.DiskSpaceMonitor')
  HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ArchitectureMonitor')
  String hudsonNodeMonitorsArchitectureMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ResponseTimeMonitor')
  HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  

  @Property(name: 'hudson.node_monitors.ClockMonitor')
  HudsonutilClockDifference hudsonNodeMonitorsClockMonitor = null;
  

  @Property(name: '_class')
  String _class = null;
  
  HudsonmodelHudsonMasterComputerMonitorData();

  @override
  String toString()  {
    return 'HudsonmodelHudsonMasterComputerMonitorData[hudsonNodeMonitorsSwapSpaceMonitor=$hudsonNodeMonitorsSwapSpaceMonitor, hudsonNodeMonitorsTemporarySpaceMonitor=$hudsonNodeMonitorsTemporarySpaceMonitor, hudsonNodeMonitorsDiskSpaceMonitor=$hudsonNodeMonitorsDiskSpaceMonitor, hudsonNodeMonitorsArchitectureMonitor=$hudsonNodeMonitorsArchitectureMonitor, hudsonNodeMonitorsResponseTimeMonitor=$hudsonNodeMonitorsResponseTimeMonitor, hudsonNodeMonitorsClockMonitor=$hudsonNodeMonitorsClockMonitor, _class=$_class, ]';
  }

}

