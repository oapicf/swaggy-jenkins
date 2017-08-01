part of swagger.api;


@Entity()
class HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 {
  
  @Property(name: '_class')
  String _class = null;
  

  @Property(name: 'availablePhysicalMemory')
  int availablePhysicalMemory = null;
  

  @Property(name: 'availableSwapSpace')
  int availableSwapSpace = null;
  

  @Property(name: 'totalPhysicalMemory')
  int totalPhysicalMemory = null;
  

  @Property(name: 'totalSwapSpace')
  int totalSwapSpace = null;
  
  HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2();

  @override
  String toString()  {
    return 'HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2[_class=$_class, availablePhysicalMemory=$availablePhysicalMemory, availableSwapSpace=$availableSwapSpace, totalPhysicalMemory=$totalPhysicalMemory, totalSwapSpace=$totalSwapSpace, ]';
  }

}

